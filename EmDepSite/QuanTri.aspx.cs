using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;


namespace EmDepSite
{
    public partial class QuanTri : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                loadSP();
                Label1.Text = "";
                DemSL();
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string chuoiketnoi = "Data Source=DESKTOP-GOAKFLS\\SQLEXPRESS;Initial Catalog=QLNV;Integrated Security=True";
            SqlConnection connect = new SqlConnection(chuoiketnoi);
            connect.Open();
            string sql = "select * from SanPham where sTenSP ='" + keysearch.Text + "'";
            SqlCommand command = new SqlCommand(sql, connect);
            SqlDataReader reader = command.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            connect.Close();
            DemSL();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String constring = "Data Source=DESKTOP-GOAKFLS\\SQLEXPRESS;Initial Catalog=QLNV;Integrated Security=True";
            SqlConnection sqlcon = new SqlConnection(constring);
            try
            {
            FileUpload1.SaveAs(Server.MapPath("~/pictr/") +
            Path.GetFileName(FileUpload1.FileName));
            String link = "pictr/" + Path.GetFileName(FileUpload1.FileName);
            //link = "<Video width=400 Controls><Source src=" + link + "type = video / mp4 ></ video > ";
            link = "<image src="+link+"></image>";
                String query = "Insert into SanPham(AnhSP,sTenSP,iGia,sKichThuoc,iSoLuong,sHang)" +
                    "values('" + link + "',N'" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "',N'" + TextBox6.Text + "')";
                SqlCommand cmd = new SqlCommand(query, sqlcon);
                sqlcon.Open();
                cmd.ExecuteNonQuery();
                sqlcon.Close();
                loadSP();
                Label1.Text = "Sản Phẩm đã được thêm vào danh sách sản phẩm";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                DemSL();
            }
            catch
            {
                Label1.Text = "Bạn Chưa điền đủ thông tin sản phẩm";
            }
        }
        private void loadSP()
        {
           
            string chuoiketnoi = "Data Source=DESKTOP-GOAKFLS\\SQLEXPRESS;Initial Catalog=QLNV;Integrated Security=True";
            SqlConnection connect = new SqlConnection(chuoiketnoi);
            connect.Open();
            string sql = "select * from SanPham";
            SqlCommand command = new SqlCommand(sql, connect);
            SqlDataReader reader = command.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            connect.Close();
            DemSL();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void DeleteLink_Click(object sender, EventArgs e)
        {
            string chuoiketnoi = "Data Source=DESKTOP-GOAKFLS\\SQLEXPRESS;Initial Catalog=QLNV;Integrated Security=True";
            SqlConnection connect = new SqlConnection(chuoiketnoi);
            int rowindex = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            int MaSP = Convert.ToInt32(GridView1.Rows[rowindex].Cells[0].Text);
            connect.Open();
            SqlCommand cmd = new SqlCommand("delete from SanPham where iSoLuong='" + MaSP + "'", connect);
            cmd.ExecuteNonQuery();
            connect.Close();
            loadSP();
            
        }
        private void DemSL()
        {
            if (GridView1 == null)
            {
                Label2.Text = "Hiện Không Có Sản Phẩm nào Thỏa Mãn Yêu Cầu";
            }
            else
            {
                int SL;
                SL = GridView1.Rows.Count;
                Label2.Text = "Danh Sách Sản Phẩm Hiện Có: " + SL + " Sản Phẩm.";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string user = Session["username"].ToString();
            String constring = "Data Source=DESKTOP-GOAKFLS\\SQLEXPRESS;Initial Catalog=QLNV;Integrated Security=True";
            SqlConnection sqlcon = new SqlConnection(constring);
            FileUpload1.SaveAs(Server.MapPath("~/pictr/") +
           Path.GetFileName(FileUpload1.FileName));
            String link = "pictr/" + Path.GetFileName(FileUpload1.FileName);
            link = "<image src=" + link + "></image>";
            String query = "Insert into GioHang(sTenTK,AnhSP,sTenSP,iGia)" +
                "values('" + user + "','" + link  + "',N'" + Request.Form.Get("Label20") + "',N'" + TextBox3.Text + "')";
            SqlCommand cmd = new SqlCommand(query, sqlcon);
            sqlcon.Open();
            cmd.ExecuteNonQuery();
            sqlcon.Close();
        }
    }
}