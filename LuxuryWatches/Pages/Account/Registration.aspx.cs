using LuxuryWatches.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace LuxuryWatches.Pages.Account
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDK_Click(object sender, EventArgs e)
        {
           // khachHangBLL khBll = new khachHangBLL();
           // khachHang kh = khBll.UserLogin(txtTaikhoan.Value, txtMatkhau.Value);
            if (Page.IsValid)
            {
                khachHang dangkymoi = new khachHang()
                {
                    tkThanhVien = txtTaikhoan.Value,
                    eMail = txtEmail.Value,
                    soDT = txtSDT.Value,
                    matKhau = txtMatkhau.Value,
            };
                LuxuryWatchesEntities db = new LuxuryWatchesEntities();
                    db.khachHangs.Add(dangkymoi);
                    db.SaveChanges();
                //Session["tkThanhVienUser"] = kh;
                Response.Redirect("/Default.aspx");
             
            }

        }
    }
}