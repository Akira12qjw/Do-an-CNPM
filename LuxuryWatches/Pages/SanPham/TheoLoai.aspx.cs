using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LuxuryWatches.Data;
namespace LuxuryWatches.Pages.SanPham
{
    public partial class TheoLoai : System.Web.UI.Page
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


            string bidanh = RouteData.Values["bidanh"].ToString();
            loaiSP lsp = db.loaiSPs.SingleOrDefault(m => m.biDanh == bidanh);
            this.Title = "Đồng hồ " + lsp.tenLoai;
            LiteralTieuDe.Text = "Đồng hồ " + lsp.tenLoai;
            LiteralBreadcrumbActive.Text = "Đồng hồ " + lsp.tenLoai;
        }

        private bool IsUserLoggedIn()
        {
            // Kiểm tra biến phiên để xem người dùng đã đăng nhập hay chưa

            return Session["tkThanhVienUser"] != null || Session["tkThanhVienMember"] != null;

        }
    }
}