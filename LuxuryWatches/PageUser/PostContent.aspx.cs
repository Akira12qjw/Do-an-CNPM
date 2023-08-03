using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LuxuryWatches.Data;
namespace LuxuryWatches.PageUser
{
    public partial class PostContent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string bidanh = RouteData.Values["bidanh"].ToString();
            baiViet bv = new BaiVietBLL().LayTheoBiDanh(bidanh);
            if (bv == null)
            {
                Response.Redirect("/StaticPages/404.html", false);
            }
            else
            {
                LiteralBreadcrumbActive.Text = bv.tenBV;
                Page.Title = bv.tenBV;
            }
        }
    }
}