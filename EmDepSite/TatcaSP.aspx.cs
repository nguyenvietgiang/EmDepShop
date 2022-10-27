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
    public partial class TatcaSP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string hang = Request.QueryString.Get("hang");
            if (hang != null)
            {
                loadSP5();
            }
            else
            {
                loadSP4();
            }    
         }
        private void loadSP4()
        {
            string chuoiketnoi = "Data Source=DESKTOP-GOAKFLS\\SQLEXPRESS;Initial Catalog=QLNV;Integrated Security=True";
            SqlConnection connect = new SqlConnection(chuoiketnoi);
            connect.Open();
            string sql = "select * from SanPham";
            SqlCommand command = new SqlCommand(sql, connect);
            SqlDataReader reader = command.ExecuteReader();
            ListView1.DataSource = reader;
            ListView1.DataBind();
            connect.Close();
        }
        private void loadSP5()
        {
            string hang = Request.QueryString.Get("hang");
            string chuoiketnoi = "Data Source=DESKTOP-GOAKFLS\\SQLEXPRESS;Initial Catalog=QLNV;Integrated Security=True";
            SqlConnection connect = new SqlConnection(chuoiketnoi);
            connect.Open();
            string sql = "select * from SanPham where sHang ='" + hang + "'";
            SqlCommand command = new SqlCommand(sql, connect);
            SqlDataReader reader = command.ExecuteReader();
            Label1.Text = "Của " + hang;
            ListView1.DataSource = reader;
            ListView1.DataBind();
            connect.Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string chuoiketnoi = "Data Source=DESKTOP-GOAKFLS\\SQLEXPRESS;Initial Catalog=QLNV;Integrated Security=True";
            SqlConnection connect = new SqlConnection(chuoiketnoi);
            connect.Open();
            string sql = "select * from SanPham where sTenSP like N'" + keysearch.Text + "%'";
            SqlCommand command = new SqlCommand(sql, connect);
            SqlDataReader reader = command.ExecuteReader();
            ListView1.DataSource = reader;
            ListView1.DataBind();
            connect.Close();
            int SL;
            SL = ListView1.Items.Count;
            Label1.Text = "" + SL;
        }
    }
}