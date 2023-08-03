using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LuxuryWatches.Data;
namespace LuxuryWatches.PageUser.SanPhamUser
{
    public partial class TheoLoaiSP : System.Web.UI.Page
    {
        LuxuryWatchesEntities db = new LuxuryWatchesEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            string bidanh = RouteData.Values["bidanh"].ToString();
            loaiSP lsp = db.loaiSPs.SingleOrDefault(m => m.biDanh == bidanh);
            this.Title = "Đồng hồ " + lsp.tenLoai;
            LiteralTieuDe.Text = "Đồng hồ " + lsp.tenLoai;
            LiteralBreadcrumbActive.Text = "Đồng hồ " + lsp.tenLoai;
        }
    }
}