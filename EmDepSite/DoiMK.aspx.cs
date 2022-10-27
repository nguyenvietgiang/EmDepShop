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
    public partial class ChinhSachBM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          

        }

        protected void btnReg1_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string password = Request.Form.Get("password");
                string repassword = Request.Form.Get("re-password");
                string user = Session["username"].ToString();
                string chuoiketnoi = "Data Source=DESKTOP-GOAKFLS\\SQLEXPRESS;Initial Catalog=QLNV;Integrated Security=True";
                SqlConnection connect = new SqlConnection(chuoiketnoi);
                {
                    connect.Open();
                    using (SqlCommand cmd = new SqlCommand("", connect))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        if (Checkmkc() ==0)
                        {
                            btn_error.InnerHtml = "Mật khẩu cũ sai.";
                        }
                        else if (Kiemtra2()==1)
                        {
                            btn_error.InnerHtml = "Nhập lại mật khẩu không đúng.";
                        }
                        else {
                            cmd.CommandText = "MK_Update";
                            try
                            {
                                cmd.Parameters.AddWithValue("@sTenTK", user);
                                cmd.Parameters.AddWithValue("@sMatKhau", password);
                                cmd.Parameters.AddWithValue("@sRMatKhau", repassword);
                                cmd.ExecuteNonQuery();
                                btn_error.InnerHtml = "Đã Thay Đổi Mật Khẩu";
                            }
                            catch
                            {
                                btn_error.InnerHtml = "Thay Đổi thất bại";
                            }
                        }
                    }
                }



                    }
        }
        private int Checkmkc()
        {
            string user = Session["username"].ToString();
            string oldpass = Request.Form.Get("oldpassword");
            string chuoiketnoi = "Data Source=DESKTOP-GOAKFLS\\SQLEXPRESS;Initial Catalog=QLNV;Integrated Security=True";
            SqlConnection connect = new SqlConnection(chuoiketnoi);
            connect.Open();
            using (DataTable dt = new DataTable("tk2"))
            {
                using (SqlCommand cmd = new SqlCommand("select * from tk2 where sTenTK='" + user + "'and sMatKhau ='" + oldpass + "'", connect))
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
        private int Kiemtra2()
        {
            string password = Request.Form.Get("password");
            string repassword = Request.Form.Get("re-password");
            if (password != repassword) return 1;
            else return 0;
        }
    }
}