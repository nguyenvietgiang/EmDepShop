using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace EmDepSite
{
    public partial class DangKy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
        private int Kiemtra()
        {
            string email = Request.Form.Get("email");
            string chuoiketnoi = "Data Source=DESKTOP-GOAKFLS\\SQLEXPRESS;Initial Catalog=QLNV;Integrated Security=True";
            SqlConnection connect = new SqlConnection(chuoiketnoi);
            connect.Open();
            using (DataTable dt = new DataTable("tk2"))
            {
                using (SqlCommand cmd = new SqlCommand("select * from tk2 where sGmail='" + email + "'", connect))
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

        private int Kiemtra3()
        {
            string username = Request.Form.Get("username");
            string chuoiketnoi = "Data Source=DESKTOP-GOAKFLS\\SQLEXPRESS;Initial Catalog=QLNV;Integrated Security=True";
            SqlConnection connect = new SqlConnection(chuoiketnoi);
            connect.Open();
            using (DataTable dt = new DataTable("tk2"))
            {
                using (SqlCommand cmd = new SqlCommand("select * from tk2 where sTenTK='" + username + "'", connect))
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

        protected void btnReg_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string username = Request.Form.Get("username");
                string email = Request.Form.Get("email");
                string password = Request.Form.Get("password");
                string repassword = Request.Form.Get("re-password");
                string chuoiketnoi = "Data Source=DESKTOP-GOAKFLS\\SQLEXPRESS;Initial Catalog=QLNV;Integrated Security=True";
                SqlConnection connect = new SqlConnection(chuoiketnoi);
                {
                    connect.Open();
                    using (SqlCommand cmd = new SqlCommand("", connect))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        if (Kiemtra() == 1)
                        {
                            btn_error.InnerHtml = "Email này đã được sử dụng rồi.";
                        }
                        else if (Kiemtra2() == 1)
                        {
                            btn_error.InnerHtml = "Nhập lại mật khẩu không trùng khớp.";
                        }
                        else if(Kiemtra3()==1)
                        {
                            btn_error.InnerHtml = "Tên tài khoản này đã được dùng, hãy đặt một tên khác.";
                        }
                        else
                        {
                            cmd.CommandText = "sp_tk2";
                            try
                            {
                                cmd.Parameters.AddWithValue("@sTenTK",username);
                                cmd.Parameters.AddWithValue("@sGmail", email);
                                cmd.Parameters.AddWithValue("@sMatKhau", password);
                                cmd.Parameters.AddWithValue("@sRMatKhau", repassword);
                                cmd.ExecuteNonQuery();
                                btn_error.InnerHtml = "Tài Khoản đã được đăng ký thành công";
                            }
                            catch
                            {
                                btn_error.InnerHtml = "Đăng ký tài khoản thất bại";
                            }
                        }

                    }
                }
            }
        }
    }
}