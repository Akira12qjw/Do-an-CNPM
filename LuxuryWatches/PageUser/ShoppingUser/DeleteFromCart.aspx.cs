using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LuxuryWatches.Data;
namespace LuxuryWatches.PageUser.ShoppingUser
{
    public partial class RemoveFromCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<CartItem> shoppinguser = GetShoppingUser();
            int maSP = int.Parse(Request.QueryString["maSP"].ToString());
            string mauSac = Request.QueryString["mauSac"].ToString();
            string kichCo = Request.QueryString["kichCo"].ToString();
            CartItem itemDelete = shoppinguser.SingleOrDefault(m => m.maSP == maSP && m.mauSac == mauSac && m.kichCo == kichCo);
            if(itemDelete != null)
            {
                shoppinguser.Remove(itemDelete);
                //var result = new { status = 1, tongSoLuong = shoppingcart.Sum(m => m.soLuong), tongThanhTien = shoppingcart.Sum(m => m.thanhTien).ToString("#,##0").Replace(',', '.') };
                string json = "{ \"status\" : 1, \"tongSoLuong\" : " + shoppinguser.Sum(m => m.soLuong).ToString()+", \"tongThanhTien\" :\"" + shoppinguser.Sum(m => m.thanhTien).ToString("#,##0").Replace(',', '.') +"\" }";
                Response.Clear();
                Response.ContentType = "application/json; charset=utf-8";
                Response.Write(json);
            }
            else
            {
                string json = "{ status : 0, tongSoLuong : " + shoppinguser.Sum(m => m.soLuong).ToString() + ", tongThanhTien :\"" + shoppinguser.Sum(m => m.thanhTien).ToString("#,##0").Replace(',', '.') + "\" }";
                Response.Clear();
                Response.ContentType = "application/json; charset=utf-8";
                Response.Write(json);
            }
        }
        public List<CartItem> GetShoppingUser()
        {
            return Session["shoppinguser"] as List<CartItem>;
        }
    }
}