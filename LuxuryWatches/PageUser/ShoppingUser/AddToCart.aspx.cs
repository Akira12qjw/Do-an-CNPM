using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LuxuryWatches.Data;
namespace LuxuryWatches.PageUser.ShoppingUser
{
    public partial class AddToCart : System.Web.UI.Page
    {
        LuxuryWatchesEntities db = new LuxuryWatchesEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["shoppinguser"] == null)
            {
                Session["shoppinguser"] = new List<CartItem>();
            }
            List<CartItem> shoppingUser = Session["shoppinguser"] as List<CartItem>;
            int maSP = int.Parse(Request.QueryString["maSP"].ToString());
            string mauSac = Request.QueryString["mauSac"].ToString();
            string kichCo = Request.QueryString["kichCo"].ToString();
            CartItem itemEdit = shoppingUser.SingleOrDefault(m => m.maSP == maSP && m.mauSac == mauSac && m.kichCo == kichCo);
            if(itemEdit != null)
            {
                itemEdit.soLuong++;
            }
            else
            {
                sanPham sp = db.sanPhams.Find(maSP);
                if(sp == null)
                {
                    Response.Redirect("/Pages/404");
                }

                CartItem itemNew = new CartItem()
                {
                    maSP = maSP,
                    mauSac = mauSac,
                    soLuong = 1,
                    kichCo = kichCo,
                    giaBan = sp.giaBan,
                    hinhDaiDien = sp.hinhDaiDien,
                    tenSP = sp.tenSP,
                    biDanh = sp.biDanh
                };
                shoppingUser.Add(itemNew);
            }
            Response.Redirect(Request.UrlReferrer != null ? Request.UrlReferrer.ToString() : "/gio-hang-user");
        }
    }
}