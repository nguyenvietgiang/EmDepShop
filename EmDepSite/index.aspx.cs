using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
namespace EmDepSite
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ltc.InnerText = "Hiện đang có: "+Application["counter"].ToString()+" truy cập";
            DangNhap();
            int SL;
            SL = ListView4.Items.Count;
            Label1.Text =" "+SL;
            loadSP();
            loadSP2();
            loadSP3();
        }
        private void DangNhap()
        {
            if (Session["username"] != null)
            {
                dangnhap.InnerHtml = "<a href = 'TaiKhoan.aspx' class='user'>Xem Tài Khoản: " + Session["username"].ToString() + "" + "</a>";
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string chuoiketnoi = "Data Source=DESKTOP-GOAKFLS\\SQLEXPRESS;Initial Catalog=QLNV;Integrated Security=True";
            SqlConnection connect = new SqlConnection(chuoiketnoi);
            connect.Open();
            string sql = "select * from SanPham where sTenSP like N'" + keysearch.Text + "%'";
            SqlCommand command = new SqlCommand(sql, connect);
            SqlDataReader reader = command.ExecuteReader();
            ListView4.DataSource = reader;
            ListView4.DataBind();
            connect.Close();
            int SL;
            SL = ListView4.Items.Count;
            Label1.Text = "" + SL;
        }
        private void loadSP4()
        {
            string chuoiketnoi = "Data Source=DESKTOP-GOAKFLS\\SQLEXPRESS;Initial Catalog=QLNV;Integrated Security=True";
            SqlConnection connect = new SqlConnection(chuoiketnoi);
            connect.Open();
            string sql = "select * from SanPham";
            SqlCommand command = new SqlCommand(sql, connect);
            SqlDataReader reader = command.ExecuteReader();
            ListView4.DataSource = reader;
            ListView4.DataBind();
            connect.Close();
        }
        private void loadSP()
        {
            string chuoiketnoi = "Data Source=DESKTOP-GOAKFLS\\SQLEXPRESS;Initial Catalog=QLNV;Integrated Security=True";
            SqlConnection connect = new SqlConnection(chuoiketnoi);
            connect.Open();
            string sql = "select * from SanPham where sMaSP <4";
            SqlCommand command = new SqlCommand(sql, connect);
            SqlDataReader reader = command.ExecuteReader();
            ListView1.DataSource = reader;
            ListView1.DataBind();
            connect.Close();
        }
        private void loadSP2()
        {
            string chuoiketnoi = "Data Source=DESKTOP-GOAKFLS\\SQLEXPRESS;Initial Catalog=QLNV;Integrated Security=True";
            SqlConnection connect = new SqlConnection(chuoiketnoi);
            connect.Open();
            string sql = "SELECT TOP(3) *FROM [SanPham] WHERE iGia >1000 ORDER BY iSoLuong ASC  ";
            SqlCommand command = new SqlCommand(sql, connect);
            SqlDataReader reader = command.ExecuteReader();
            ListView2.DataSource = reader;
            ListView2.DataBind();
            connect.Close();
        }
        private void loadSP3()
        {
            string chuoiketnoi = "Data Source=DESKTOP-GOAKFLS\\SQLEXPRESS;Initial Catalog=QLNV;Integrated Security=True";
            SqlConnection connect = new SqlConnection(chuoiketnoi);
            connect.Open();
            string sql = "SELECT TOP(3) *FROM [SanPham] WHERE iGia >1000 ORDER BY iGia DESC ";
            SqlCommand command = new SqlCommand(sql, connect);
            SqlDataReader reader = command.ExecuteReader();
            ListView3.DataSource = reader;
            ListView3.DataBind();
            connect.Close();
        }
    }
}