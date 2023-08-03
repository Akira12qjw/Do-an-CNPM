using System;
using System.Collections.Generic;
using System.Security.Policy;
using System.Web;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace LuxuryWatches
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            var settings = new FriendlyUrlSettings();
            settings.AutoRedirectMode = RedirectMode.Permanent;
            routes.EnableFriendlyUrls(settings);
            routes.MapPageRoute("chitietsp", "{bidanh}-{masp}.html", "~/Pages/SanPham/ChiTiet.aspx");
          //  routes.MapPageRoute("chitietspUser", "user/{bidanh}-{masp}.html", "~/PageUser/SanPhamUser/ChiTietSP.aspx");

            routes.MapPageRoute("theoloai", "dong-ho-loai/{bidanh}.html", "~/Pages/SanPham/TheoLoai.aspx");
   //         routes.MapPageRoute("theoloaisp", "user-dong-ho-loai/{bidanh}.html", "~/PageUser/SanPhamUser/TheoLoaiSP.aspx");

            routes.MapPageRoute("theohangsx", "dong-ho-hang/{mahangsx}.html", "~/Pages/SanPham/TheoHangSX.aspx");
           // routes.MapPageRoute("theohangsxuser", "dong-ho-hang/{mahangsx}.html", "~/PageUsers/SanPhamUser/TheoHangSX.aspx");

            routes.MapPageRoute("lienhe", "lien-he", "~/Contact.aspx");
          //  routes.MapPageRoute("contactUser", "contactUser", "~/PageUser/ContactUser.aspx");

            routes.MapPageRoute("shoppingcart", "gio-hang", "~/Pages/ShoppingCart/Default.aspx");
            routes.MapPageRoute("addtocart", "them-vao-gio", "~/Pages/ShoppingCart/AddToCart.aspx");
            routes.MapPageRoute("deletefromcart", "xoa-khoi-gio", "~/Pages/ShoppingCart/DeleteFromCart.aspx");
            
          //  routes.MapPageRoute("shoppinguser", "gio-hang-user", "~/PageUser/ShoppingUser/Default.aspx");
          //  routes.MapPageRoute("addtocartuser", "them-vao-gio", "~/PageUser/ShoppingUser/AddToCart.aspx");


            routes.MapPageRoute("blog", "blog", "~/Pages/Blog/Default.aspx");
          //  routes.MapPageRoute("bloguser", "blog-user", "~/PageUser/DefaultUser.aspx");

            routes.MapPageRoute("postcontent", "blog/{bidanh}.html", "~/Pages/Blog/PostContent.aspx");
         //   routes.MapPageRoute("PostContentUser", "bloguser/{bidanh}.html", "~/PageUser/PostContent.aspx");

            routes.MapPageRoute("gioithieu", "gioi-thieu", "~/About.aspx");
           // routes.MapPageRoute("AboutUser", "gioi-thieu-user", "~/PageUser/AboutUser.aspx"); 

            routes.MapPageRoute("timkiem", "tim-kiem", "~/Pages/SanPham/SearchResult.aspx");
           // routes.MapPageRoute("timkiemuser", "tim-kiem-user", "~/PageUser/SanPhamUser/SearchResult.aspx");

            routes.MapPageRoute("dangnhap", "dang-nhap", "~/Pages/Account/Login.aspx");
            routes.MapPageRoute("signin", "sign-in", "~/Pages/Account/SignIn.aspx");

            routes.MapPageRoute("dangxuat", "dang-xuat", "~/Pages/Account/Logoff.aspx");
            routes.MapPageRoute("dangky", "dang-ky", "~/Pages/Account/Registration.aspx");
        }
    }
}
