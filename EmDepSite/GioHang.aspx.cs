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
    public partial class GioHang : System.Web.UI.Page
    {
        static Int64 grandtotal;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                int SL;
                grandtotal = 1600000;
                string user = Session["username"].ToString();
                string chuoiketnoi = "Data Source=DESKTOP-GOAKFLS\\SQLEXPRESS;Initial Catalog=QLNV;Integrated Security=True";
                SqlConnection connect = new SqlConnection(chuoiketnoi);
                connect.Open();
                string sql = "select * from GioHang join SanPham on GioHang.sMaSP  = SanPham.sMaSP   where GioHang.sTenTK ='" + user  + "'";
                SqlCommand command = new SqlCommand(sql, connect);
                SqlDataReader reader = command.ExecuteReader();
                ListView1.DataSource = reader;
                ListView1.DataBind();
                SL = ListView1.Items.Count;
                exampleModalLabel.InnerText = user +", Bạn Có " + SL + " Sản Phẩm Trong Giỏ";
                Label1.Text ="Tổng:" +grandtotal.ToString();
                connect.Close();
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }
        private void TinhTong()
        {
           
        }

        protected void ListView1_DataBound(object sender, EventArgs e)
        {
          
        }

        protected void ListView1_PreRender(object sender, EventArgs e)
        {
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int discount;
            int maxdiscount;
            Int64 finalprice;
            Int64 discountprice;

            String mycon = "Data Source=DESKTOP-GOAKFLS\\SQLEXPRESS;Initial Catalog=QLNV;Integrated Security=True";

            String myquery = "Select * from CouponsDetails where couponcode='" + TextBox1.Text + "'";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label3.Text = "Mã Giảm Giá:  " + TextBox1.Text + " Đã Được Kích Hoạt";

                discount = Convert.ToInt32(ds.Tables[0].Rows[0]["discount"].ToString());
                maxdiscount = Convert.ToInt32(ds.Tables[0].Rows[0]["maxdiscount"].ToString());
                discountprice = (grandtotal * discount) / 1000000;
                if (discountprice > maxdiscount)
                {
                    discountprice = maxdiscount;
                }
                Label4.Text = discountprice.ToString() + " ( " + discount + "% ) Nhiều Nhất là: ." + maxdiscount;
                finalprice = grandtotal - discountprice;
                Label5.Text =  grandtotal.ToString()+ " Đồng.";
                Label6.Text = " Xuống Còn: " + finalprice.ToString() + " Đồng.";
                Label1.Text = "Tổng:" + finalprice.ToString();
            }
            else
            {
                Label3.Text = "Mã Đã Hết Hạn Hoặc Không Tồn Tại!";
                Label5.Text = "";
                Label4.Text = "";
                Label6.Text = "";

            }
            con.Close();
        }
    }
}