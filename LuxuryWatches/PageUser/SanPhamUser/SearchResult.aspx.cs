using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LuxuryWatches.Data;
namespace LuxuryWatches.PageUser.SanPhamUser
{
    public partial class SearchResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public List<sanPham> GetResult()
        {
            LuxuryWatchesEntities db = new LuxuryWatchesEntities();
            string tukhoa = Request.QueryString["tukhoa"].ToString();
            return db.sanPhams.Where(m => m.tenSP.Contains(tukhoa)).ToList();
        }
    }
}