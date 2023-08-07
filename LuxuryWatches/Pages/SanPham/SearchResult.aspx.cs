using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LuxuryWatches.Data;
namespace LuxuryWatches.Pages.SanPham
{
    public partial class SearchResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            // Kiểm tra xem người dùng đã đăng nhập hay chưa
            if (!IsUserLoggedIn())
            {
                // Nếu chưa đăng nhập, chuyển hướng sang trang đăng nhập
                Response.Redirect("/sign-in");
            }
        }

        private bool IsUserLoggedIn()
        {
            // Kiểm tra biến phiên để xem người dùng đã đăng nhập hay chưa

            return Session["tkThanhVienUser"] != null || Session["tkThanhVienMember"] != null;

        }

        public List<sanPham> GetResult()
        {
            LuxuryWatchesEntities db = new LuxuryWatchesEntities();
            string tukhoa = Request.QueryString["tukhoa"].ToString();
            return db.sanPhams.Where(m => m.tenSP.Contains(tukhoa)).ToList();
        }
    }
}