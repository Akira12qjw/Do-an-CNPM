using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LuxuryWatches.Data;
namespace LuxuryWatches.PageUser.ShoppingUser
{
    public partial class Default : System.Web.UI.Page
    {
        LuxuryWatchesEntities db = new LuxuryWatchesEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public List<CartItem> GetShoppingUser()
        {
            return Session["shoppinguser"] as List<CartItem>;
        }

        protected void btnXacnhan_Click(object sender, EventArgs e)
        {
            List<CartItem> shoppinguser = GetShoppingUser();
            donHangBLL dhBLL = new donHangBLL();
           
            dhBLL.Insert(txtHoten.Value, txtSoDT.Value, txtDiachi.Value, txtEmail.Value, shoppinguser);
            shoppinguser.Clear();
            Session["shoppinguser"] = new List<CartItem>();
            Response.Write("<script>alert('Đặt hàng thành công.');</script>");
        }
    }
}