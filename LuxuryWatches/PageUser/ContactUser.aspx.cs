using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LuxuryWatches.Data;
namespace LuxuryWatches.PageUser
{
    public partial class ContactUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnGui_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                hopThu hopthumoi = new hopThu()
                {
                    email = txtEmail.Value,
                    hoTen = txtHoten.Value,
                    noiDung = txtNoiDung.Value,
                    sdt = txtSDT.Value,
                    daDuyet = false,
                    ngayGui = DateTime.Now
                };
                LuxuryWatchesEntities db = new LuxuryWatchesEntities();
                db.hopThus.Add(hopthumoi);
                db.SaveChanges();
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "<script>alert('Gửi thành công.');</script>", true);
                Response.Redirect("~/Userlg.aspx");
            }
        }
    }
}