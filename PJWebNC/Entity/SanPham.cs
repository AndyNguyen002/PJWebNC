using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PJWebNC.Entity
{
    public class SanPham
    {
        public int IDSanPham { get; set; }
        public string TenSP { get; set; }
        public int MaThuongHieu { get; set; }
        public int GiaBan { get; set; }
        public string GioiTinh { get; set; }
        public int Season { get; set; }
        public string Anh { get; set; }
        public int Hot { get; set; }
        public int Huong { get; set; }
        public int DacDiem { get; set; }
        public int KhuyenDung { get; set; }

        public string TenThuongHieu { get; set; }

    }
}