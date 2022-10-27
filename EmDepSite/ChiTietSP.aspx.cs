using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace EmDepSite
{
    public partial class ChiTietSP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadBL();
            string ma = Request.QueryString.Get("ma");
            if (ma != null)
            {
                string chuoiketnoi = "Data Source=DESKTOP-GOAKFLS\\SQLEXPRESS;Initial Catalog=QLNV;Integrated Security=True";
                SqlConnection connect = new SqlConnection(chuoiketnoi);
                connect.Open();
                string sql = "select * from SanPham where sMaSP='" + ma + "'";
                SqlCommand command = new SqlCommand(sql, connect);
                SqlDataReader reader = command.ExecuteReader();
                ListView1.DataSource = reader;
                ListView1.DataBind();
                connect.Close();
            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                   string ma = Request.QueryString.Get("ma");
                   string user = Session["username"].ToString();
                    String constring = "Data Source=DESKTOP-GOAKFLS\\SQLEXPRESS;Initial Catalog=QLNV;Integrated Security=True";
                    SqlConnection sqlcon = new SqlConnection(constring);
                    String query = "Insert into GioHang(sTenTK,sMaSP)" +
                        "values('" + user + "',N'" + ma + "')";
                    SqlCommand cmd = new SqlCommand(query, sqlcon);
                    sqlcon.Open();
                    cmd.ExecuteNonQuery();
                    sqlcon.Close();   
            }  
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                string ma = Request.QueryString.Get("ma");
                string user = Session["username"].ToString();
                String constring = "Data Source=DESKTOP-GOAKFLS\\SQLEXPRESS;Initial Catalog=QLNV;Integrated Security=True";
                SqlConnection sqlcon = new SqlConnection(constring);
                String query = "Insert into GioHang(sTenTK,sMaSP)" +
                    "values('" + user + "',N'" + ma + "')";
                SqlCommand cmd = new SqlCommand(query, sqlcon);
                sqlcon.Open();
                cmd.ExecuteNonQuery();
                Label1.Text = "Đã thêm sản phẩm vào giỏ hàng.";
                sqlcon.Close();
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string ma = Request.QueryString.Get("ma");
            if (Session["username"] != null)
            {
                string user = Session["username"].ToString();
                String constring = "Data Source=DESKTOP-GOAKFLS\\SQLEXPRESS;Initial Catalog=QLNV;Integrated Security=True";
                SqlConnection sqlcon = new SqlConnection(constring);
                String query = "Insert into BLSP(iMaSP,sTenKH,sBinhLuan)" +
                    "values('" + ma + "',N'" + user + "',N'" + TextBox1.Text + "')";
                SqlCommand cmd = new SqlCommand(query, sqlcon);
                sqlcon.Open();
                cmd.ExecuteNonQuery();
                sqlcon.Close();
                TextBox1.Text = "";
                loadBL();
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }
        private void loadBL()
        {
            string ma = Request.QueryString.Get("ma");
            if (ma != null)
            {
                string chuoiketnoi = "Data Source=DESKTOP-GOAKFLS\\SQLEXPRESS;Initial Catalog=QLNV;Integrated Security=True";
                SqlConnection connect = new SqlConnection(chuoiketnoi);
                connect.Open();
                string sql = "select * from BLSP where iMaSP='" + ma + "'";
                SqlCommand command = new SqlCommand(sql, connect);
                SqlDataReader reader = command.ExecuteReader();
                ListView2.DataSource = reader;
                ListView2.DataBind();
                connect.Close();
            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }

    }
}