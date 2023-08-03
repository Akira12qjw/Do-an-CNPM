using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LuxuryWatches.Data
{
    public class taiKhoanBLL
    {
        LuxuryWatchesEntities db = new LuxuryWatchesEntities();
        public taiKhoan AdminLogin(string tkThanhVien, string matkhau)
        {
            return db.taiKhoans.FirstOrDefault(m => m.Quyen == "admin" && m.tkThanhVien == tkThanhVien && m.matKhau == matkhau);
        }
        public taiKhoan MemberLogin(string tkThanhVien, string matkhau)
        {
            return db.taiKhoans.FirstOrDefault(m => m.Quyen == "member" && m.tkThanhVien == tkThanhVien && m.matKhau == matkhau);
        }
      
    }
}