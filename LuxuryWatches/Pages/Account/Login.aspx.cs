using LuxuryWatches.Data;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace LuxuryWatches.Pages.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtTaikhoan.Attributes.Add("placeholder", "Tài khoản");
            txtMatkhau.Attributes.Add("placeholder", "Mật khẩu");
        }

       
        protected void btnLogin2_Click(object sender, EventArgs e)
        {
            taiKhoanBLL tkBLL = new taiKhoanBLL();
            taiKhoan tk = tkBLL.MemberLogin(txtTaikhoan.Value, txtMatkhau.Value);
            khachHangBLL khBll = new khachHangBLL();
            khachHang kh = khBll.UserLogin(txtTaikhoan.Value, txtMatkhau.Value);
            if (tk == null && kh == null )
            {
                lblLoi.Text = "Sai tài khoản hoặc mật khẩu!";
            }

            else if ((tk != null && tk.duocSD == false) || (kh != null && kh.duocSD == false))
            {
                lblLoi.Text = "Tài khoản đang bị khóa!";
            }
            else
            {
                if (kh != null)
                {
                    Session["tkThanhVienUser"] = kh.tkThanhVien;
                    Response.Redirect("/Userlg.aspx");
                }
                else
                {
                    Session["tkThanhVienMember"] = tk.tkThanhVien;
                    Response.Redirect("/Userlg.aspx");
                }

            }
            //string connectionString = "data source=ADMIN-PC;initial catalog=DB_LOGIN";
            //using (SqlConnection con = new SqlConnection(connectionString))
            //{
               // con.Open();
                // Truy vấn CSDL để kiểm tra thông tin đăng nhập
                //string query = "SELECT COUNT(*) FROM Users WHERE Username=@username AND Password=@password";
                //using (SqlCommand cmd = new SqlCommand(query, con))
                //{
                   // cmd.Parameters.AddWithValue("@username", txtTaikhoan.Value);
                    //cmd.Parameters.AddWithValue("@password", txtMatkhau.Value);

                   // int count = (int)cmd.ExecuteScalar();

                    //if (count > 0)
                    //{
                        // Đăng nhập thành công, điều hướng tới trang chính hoặc trang đã đăng ký.
                      //  Response.Redirect("Userlg.aspx");
                    //}
                    //else
                    //{
                        // Đăng nhập không thành công, hiển thị thông báo lỗi.
                        // Ví dụ:
                        //lblLoi.Text = "Tên đăng nhập hoặc mật khẩu không chính xác.";
                    }
                }
            }

        


    
