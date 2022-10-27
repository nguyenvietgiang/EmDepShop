using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using ASPSnippets.GoogleAPI;
using System.Web.Script.Serialization;
using System.Net;
using System.IO;
using System.Data;
namespace EmDepSite
{
    public partial class login : System.Web.UI.Page
    {
        public const string FaceBookAppKey = "8c13b9f51e4900b25424f148e765bae2";
        protected void Page_Load(object sender, EventArgs e)
        {
            gglogin();
            fblogin();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string chuoiketnoi = "Data Source=DESKTOP-GOAKFLS\\SQLEXPRESS;Initial Catalog=QLNV;Integrated Security=True";
            SqlConnection connect = new SqlConnection(chuoiketnoi);
            string usernameL = Request.Form.Get("usernameL");
            string passwordL = Request.Form.Get("passwordL");
            if (usernameL != "" && passwordL != "")
            {
                if (usernameL == "admin" && passwordL == "admin")
                {
                    Session["username"] = usernameL;
                    Response.Redirect("QuanTri.aspx");
                }
                else if(checkbaned()==1)
                {
                    errorL.InnerHtml = ("Tài Khoản này đã bị khóa!!!");
                }
                else
                {
                    try
                    {
                        connect.Open();
                        string sql = "select * from tk2 where sTenTK='" + usernameL + "'and sMatKhau ='" + passwordL + "'";
                        SqlCommand cmd = new SqlCommand(sql, connect);
                        SqlDataReader dta = cmd.ExecuteReader();
                        if (dta.Read() == true)
                        {
                            Session["username"] = usernameL;
                            Response.Redirect("index.aspx");
                        }
                        else
                        {
                            errorL.InnerHtml = ("Sai tên đăng nhập hoặc tài khoản");
                        }
                    }
                    catch
                    {

                    }
                }
            }
            else
            {
                errorL.InnerHtml = ("Hãy điền đầy đủ thông tin");
            }
        }
        private void gglogin()
        {
            GoogleConnect.ClientId = "502984088517-rbq8o36aopkptf18qqrn0bfjel1vcl82.apps.googleusercontent.com";
            GoogleConnect.ClientSecret = "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";
            GoogleConnect.RedirectUri = Request.Url.AbsoluteUri.Split('?')[0];

            if (!string.IsNullOrEmpty(Request.QueryString["code"]))
            {
                Response.Redirect("index.aspx");
            }
            if (Request.QueryString["error"] == "access_denied")
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('Access denied.')", true);
            }
        }
        private void fblogin()
        {
            if (string.IsNullOrEmpty(Request.QueryString["access_token"])) return; //ERROR! No token returned from Facebook!!

            //let's send an http-request to facebook using the token            
            string json = GetFacebookUserJSON(Request.QueryString["access_token"]);

            //and Deserialize the JSON response
            JavaScriptSerializer js = new JavaScriptSerializer();
            FacebookUser oUser = js.Deserialize<FacebookUser>(json);
            if (oUser != null)
            {
                Response.Write("Welcome, " + oUser.name);
                Response.Write("<br />id, " + oUser.id);
                Response.Write("<br />email, " + oUser.email);
                Response.Write("<br />first_name, " + oUser.first_name);
                Response.Write("<br />last_name, " + oUser.last_name);
                Response.Write("<br />gender, " + oUser.gender);
                Response.Write("<br />link, " + oUser.link);
                Response.Write("<br />updated_time, " + oUser.updated_time);
                Response.Write("<br />birthday, " + oUser.birthday);
                Response.Write("<br />locale, " + oUser.locale);
                Response.Write("<br />picture, " + oUser.picture);
                if (oUser.location != null)
                {
                    Response.Write("<br />locationid, " + oUser.location.id);
                    Response.Write("<br />location_name, " + oUser.location.name);
                }
            }
        }
        private static string GetFacebookUserJSON(string access_token)
        {
            string url = string.Format("https://graph.facebook.com/me?access_token={0}&fields=email,name,first_name,last_name,link", access_token);

            WebClient wc = new WebClient();
            Stream data = wc.OpenRead(url);
            StreamReader reader = new StreamReader(data);
            string s = reader.ReadToEnd();
            data.Close();
            reader.Close();

            return s;
        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            GoogleConnect.Authorize("profile", "email");
        }

        public class GoogleProfile
        {
            public string Id { get; set; }
            public string DisplayName { get; set; }
            public Image Image { get; set; }
            public List<Email> Emails { get; set; }
            public string Gender { get; set; }
            public string ObjectType { get; set; }
        }

        public class Email
        {
            public string Value { get; set; }
            public string Type { get; set; }
        }

        public class Image
        {
            public string Url { get; set; }
        }
        private int checkbaned()
        {
            string usernameL = Request.Form.Get("usernameL");
            string chuoiketnoi = "Data Source=DESKTOP-GOAKFLS\\SQLEXPRESS;Initial Catalog=QLNV;Integrated Security=True";
            SqlConnection connect = new SqlConnection(chuoiketnoi);
            connect.Open();
            using (DataTable dt = new DataTable("tk2"))
            {
                using (SqlCommand cmd = new SqlCommand("select * from banedKH where sTenTKB='" + usernameL + "'", connect))
                {

                    using (SqlDataAdapter ad = new SqlDataAdapter(cmd))
                    {
                        DataTable tb = new DataTable();
                        ad.Fill(tb);
                        if (tb.Rows.Count > 0) return 1;
                        else return 0;
                    }

                }

            }
        }
    }
    
}