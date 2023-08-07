using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LuxuryWatches.Data;
namespace LuxuryWatches.Pages.SanPham
{
    public partial class ChiTiet : System.Web.UI.Page
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

        private bool IsUserLoggedIn()
        {
            // Kiểm tra biến phiên để xem người dùng đã đăng nhập hay chưa

            return Session["tkThanhVienUser"] != null || Session["tkThanhVienMember"] != null;

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
            Response.RedirectToRoute("addtocart", new { maSP = maSP, mauSac = mauSac, kichCo = kichCo });
        }
    }
}