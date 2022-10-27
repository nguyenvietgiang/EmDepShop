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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String constring = "Data Source=DESKTOP-GOAKFLS\\SQLEXPRESS;Initial Catalog=QLNV;Integrated Security=True";
            SqlConnection sqlcon = new SqlConnection(constring);
            try
            {
                FileUpload1.SaveAs(Server.MapPath("~/pictr/") +
       Path.GetFileName(FileUpload1.FileName));
                String link = "pictr/" + Path.GetFileName(FileUpload1.FileName);
                //link = "<Video width=400 Controls><Source src=" + link + "type = video / mp4 ></ video > ";
                link = "<image src=" + link + "></image>";
                String query = "Insert into TinTuc(AnhMH,sTieuDe,sNoiDung,sChuDe)" +
                  "values('" + link + "',N'" + TextBox1.Text + "',N'" + TextArea1.InnerText + "','" + DropDownList1.SelectedValue + "')";
                SqlCommand cmd = new SqlCommand(query, sqlcon);
                sqlcon.Open();
                cmd.ExecuteNonQuery();
                sqlcon.Close();
            }
            catch
            {
                
            }
            

        }
    }
}