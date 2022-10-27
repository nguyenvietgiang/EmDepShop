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
    public partial class SuaSP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                loadSP();
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }
        private void loadSP()
        {
            string ma = Request.QueryString.Get("ma");
            string chuoiketnoi = "Data Source=DESKTOP-GOAKFLS\\SQLEXPRESS;Initial Catalog=QLNV;Integrated Security=True";
            SqlConnection connect = new SqlConnection(chuoiketnoi);
            connect.Open();
            string sql = "select * from SanPham where sMaSP='" + ma + "'";
            SqlCommand command = new SqlCommand(sql, connect);
            SqlDataReader reader = command.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            connect.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string chuoiketnoi = "Data Source=DESKTOP-GOAKFLS\\SQLEXPRESS;Initial Catalog=QLNV;Integrated Security=True";
            SqlConnection connect = new SqlConnection(chuoiketnoi);
            SqlCommand cm = new SqlCommand();
            try
            {
                string ma = Request.QueryString.Get("ma");
                FileUpload1.SaveAs(Server.MapPath("~/pictr/") +
            Path.GetFileName(FileUpload1.FileName));
                String link = "pictr/" + Path.GetFileName(FileUpload1.FileName);
                link = "<image src=" + link + "></image>";
                cm.Connection = connect;
                cm.CommandText = "SP_Update";
                cm.CommandType = CommandType.StoredProcedure;
                cm.Parameters.AddWithValue("@sMaSP", ma);
                cm.Parameters.AddWithValue("@AnhSP", link);
                cm.Parameters.AddWithValue("@sTenSP", TextBox1.Text);
                cm.Parameters.AddWithValue("@iGia", TextBox2.Text);
                cm.Parameters.AddWithValue("@iSoLuong", TextBox3.Text);
                cm.Parameters.AddWithValue("@sKichThuoc", TextBox4.Text);
                cm.Parameters.AddWithValue("@sHang", TextBox5.Text);
                connect.Open();
                cm.ExecuteNonQuery();
                Label20.Text = "Đã Thay Đổi Thông Tin Của Sản Phẩm Này ";
                loadSP();
                connect.Close();
            }
            catch
            {
                Label20.Text = "Điền đủ thông tin để thay đổi !!! ";
            }
          
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string ma = Request.QueryString.Get("ma");
            string chuoiketnoi = "Data Source=DESKTOP-GOAKFLS\\SQLEXPRESS;Initial Catalog=QLNV;Integrated Security=True";
            SqlConnection connect = new SqlConnection(chuoiketnoi);
            connect.Open();
            string sql = "delete from SanPham where sMaSP='" + ma + "'";
            SqlCommand command = new SqlCommand(sql, connect);
            SqlDataReader reader = command.ExecuteReader();
            GridView1.DataSource = reader;
            Label20.Text = "Đã xóa sản phẩm !!! ";
            GridView1.DataBind();
            connect.Close();
        }
    }
}