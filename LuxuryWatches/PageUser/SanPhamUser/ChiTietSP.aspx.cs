using LuxuryWatches.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuxuryWatches.PageUser.SanPhamUser
{
    public partial class ChiTietSP : System.Web.UI.Page
    {
        LuxuryWatchesEntities db = new LuxuryWatchesEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int masp = int.Parse(RouteData.Values["masp"].ToString());
            sanPham sp = db.sanPhams.Find(masp);
            if (sp == null)
            {
                Response.Redirect("/StaticPages/404.html");
            }
            sp.soLanQT++;
            db.Entry(sp).State = System.Data.Entity.EntityState.Modified;
            Page.Title = sp.tenSP;
            literalBreadCrumb.Text = sp.tenSP;
        }
        public IEnumerable<sanPham> LaySanPhamLienQuan()
        {
            int masp = int.Parse(RouteData.Values["masp"].ToString());
            sanPham sp = db.sanPhams.Find(masp);
            return db.sanPhams.Where(m => m.maHangSX == sp.maHangSX && m.maSP != sp.maSP).Take(3).AsEnumerable();
        }

        protected void btnThemVaoGio_Click(object sender, EventArgs e)
        {
            int maSP = int.Parse(RouteData.Values["masp"].ToString());
            string mauSac = ((DropDownList)FormView1.FindControl("lstMauSac")).Text;
            string kichCo = ((DropDownList)FormView1.FindControl("lstKichCo")).Text;
            Response.RedirectToRoute("addtocartuser", new { maSP = maSP, mauSac = mauSac, kichCo = kichCo });
        }
    }
}