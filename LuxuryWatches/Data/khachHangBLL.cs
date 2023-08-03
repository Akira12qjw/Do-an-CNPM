using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
namespace LuxuryWatches.Data
{
    public class khachHangBLL
    {
        LuxuryWatchesEntities db = new LuxuryWatchesEntities();
        public khachHang UserLogin(string tkThanhVien, string matkhau)
        {
            return db.khachHangs.FirstOrDefault(m => m.tkThanhVien == tkThanhVien && m.matKhau == matkhau);
        }
    }
}