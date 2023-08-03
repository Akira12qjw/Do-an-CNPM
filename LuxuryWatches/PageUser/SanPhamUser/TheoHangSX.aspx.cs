using LuxuryWatches.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuxuryWatches.PageUser.SanPhamUser
{
    public partial class TheoHangSX : System.Web.UI.Page
    {
        LuxuryWatchesEntities db = new LuxuryWatchesEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            string mahangsx = RouteData.Values["mahangsx"].ToString();
            HangSanXuat hsx = db.HangSanXuats.Find(mahangsx);
            this.Title = "Đồng hồ hãng " + hsx.tenHangSX;
            LiteralBreadcrumbActive.Text = this.Title;
            LiteralTieuDe.Text = this.Title;
        }
    }
}