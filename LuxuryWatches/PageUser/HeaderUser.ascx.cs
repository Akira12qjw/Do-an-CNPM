using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuxuryWatches.PageUser
{
    public partial class HeaderUser : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtTuKhoa.Attributes.Add("placeholder", "Nhập tên sản phẩm cần tìm...");
        }

        protected void btnTimKiem_Click(object sender, EventArgs e)
        {
            string tukhoa = txtTuKhoa.Text;
            Response.RedirectToRoute("timkiemuser", new { tukhoa = tukhoa });
        }
    }
}