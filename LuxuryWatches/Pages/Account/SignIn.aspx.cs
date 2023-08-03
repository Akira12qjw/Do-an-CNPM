using System;
using LuxuryWatches.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace LuxuryWatches.Pages.Account
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            taiKhoanBLL tkBLL = new taiKhoanBLL();
            taiKhoan tk = tkBLL.MemberLogin(txtTaikhoan.Value, txtMatkhau.Value);
            taiKhoan tkadmin = tkBLL.AdminLogin(txtTaikhoan.Value, txtMatkhau.Value);

            khachHangBLL khBll = new khachHangBLL();
            khachHang kh = khBll.UserLogin(txtTaikhoan.Value, txtMatkhau.Value);
            if (tk == null && kh == null && tkadmin == null)
            {
                lblLoi.Text = "Sai tài khoản hoặc mật khẩu!";
            }

            else if ((tk != null && tk.duocSD == false) || (kh != null && kh.duocSD == false) || (tkadmin != null && tkadmin.duocSD == false))
            {
                lblLoi.Text = "Tài khoản đang bị khóa!";
            }
            else
            {
                if (kh != null)
                {
                    Session["tkThanhVienUser"] = kh;
                    Response.Redirect("/Default.aspx");
                }
                else if(tk != null)
                {
                    Session["tkThanhVienMember"] = tk.tkThanhVien;
                    Response.Redirect("/Admin/Default.aspx");
                }
                 else
                {
                    Session["tkThanhVienAdmin"] = tkadmin.tkThanhVien;
                    Response.Redirect("/Admin/Default.aspx");
                }

            }

        }
    }
}

    
