using LuxuryWatches.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuxuryWatches.Pages.SanPham
{
    public partial class TheoHangSX : System.Web.UI.Page
    {
        LuxuryWatchesEntities db = new LuxuryWatchesEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

            // Kiểm tra xem người dùng đã đăng nhập hay chưa
            if (!IsUserLoggedIn())
            {
                // Nếu chưa đăng nhập, chuyển hướng sang trang đăng nhập
                Response.Redirect("/sign-in");
            }

            string mahangsx = RouteData.Values["mahangsx"].ToString();
            HangSanXuat hsx = db.HangSanXuats.Find(mahangsx);
            this.Title = "Đồng hồ hãng " + hsx.tenHangSX;
            LiteralBreadcrumbActive.Text = this.Title;
            LiteralTieuDe.Text = this.Title;
        }
        private bool IsUserLoggedIn()
        {
            // Kiểm tra biến phiên để xem người dùng đã đăng nhập hay chưa

            return Session["tkThanhVienUser"] != null || Session["tkThanhVienMember"] != null;

        }
    }
}