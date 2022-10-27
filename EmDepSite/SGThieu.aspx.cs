using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
namespace EmDepSite
{
    public partial class SGThieu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Label1.Text = "";
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
            SqlCommand cm = new SqlCommand();
            try
            {
                FileUpload1.SaveAs(Server.MapPath("~/pictr/") +
            Path.GetFileName(FileUpload1.FileName));
            String link = "pictr/" + Path.GetFileName(FileUpload1.FileName);
            link = "<image src=" + link + "></image>";
            FileUpload2.SaveAs(Server.MapPath("~/pictr/") +
            Path.GetFileName(FileUpload2.FileName));
            String link2 = "pictr/" + Path.GetFileName(FileUpload2.FileName);
            link2 = "<image src=" + link2 + "></image>";
            cm.Connection = connect;
            cm.CommandText = "GT_Update";
                cm.CommandType = CommandType.StoredProcedure;
                cm.Parameters.AddWithValue("@sMaGT", "1");
                cm.Parameters.AddWithValue("@AnhGT", link);
                cm.Parameters.AddWithValue("@sDiaChi", "N" + TextBox1.Text);
                cm.Parameters.AddWithValue("@sLGT1", TextArea1.InnerText);
                cm.Parameters.AddWithValue("@sLGT2", TextArea2.InnerText);
                cm.Parameters.AddWithValue("@AnhGT2", link2);
                connect.Open();
                cm.ExecuteNonQuery();
                Label1.Text = "Đã Thay Đổi Thông Tin Giới Thiệu";
                connect.Close();
            }
            catch
            {
                Label1.Text = "Bạn Hãy Điền Đủ Thông Tin Để Thay Đổi";
            }
        }
    }
}