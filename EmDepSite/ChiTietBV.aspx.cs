using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace EmDepSite
{
    public partial class ChiTietBV : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ma = Request.QueryString.Get("ma");
            if (ma != null)
            {
                string chuoiketnoi = "Data Source=DESKTOP-GOAKFLS\\SQLEXPRESS;Initial Catalog=QLNV;Integrated Security=True";
                SqlConnection connect = new SqlConnection(chuoiketnoi);
                connect.Open();
                string sql = "select * from TinTuc where sTieuDe=N'" + ma + "'";
                SqlCommand command = new SqlCommand(sql, connect);
                SqlDataReader reader = command.ExecuteReader();
                ListView1.DataSource = reader;
                ListView1.DataBind();
                connect.Close();
            }
            else
            {
                Response.Redirect("TinTuc.aspx");
            }
        }
    }
}