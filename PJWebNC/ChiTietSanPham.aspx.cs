using PJWebNC.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PJWebNC
{
    public partial class ChiTietSanPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int pID = Convert.ToInt32(Page.Request.QueryString["id"]);
            if (!Page.IsPostBack)
            {
                BindData(Convert.ToString(pID));

            }

            List<SanPham> lstSPNew = Dao.DaoSanPham.getTop5New();
            dtlNew.DataSource = lstSPNew;
            DataBind();

            List<SanPham> lstRelated = Dao.DaoSanPham.getTop5related(ThuongHieu.Text, Convert.ToString(pID));
            dtlRelated.DataSource = lstRelated;
            DataBind();
        }
        public void BindData(string pID)
        {
            SanPham sp = Dao.DaoSanPham.getOne(pID);
            SanPham dd = Dao.DaoSanPham.getDacDiem(pID);
            SanPham h = Dao.DaoSanPham.getHuong(pID);


            ThuongHieu.Text = sp.TenThuongHieu.ToString();
            TenSP.Text = sp.TenSP.ToString();
            GiaBan.Text = sp.GiaBan.ToString();
            GioiTinh.Text = sp.GioiTinh.ToString();
            gioitinh1.Text = sp.GioiTinh.ToString() ;
            image1.ImageUrl = sp.Anh;

            if(dd != null)
            {
                PhatHanh.Text = dd.PhatHanh.ToString();
                DoTuoi.Text = dd.DoTuoi.ToString();
                DoLuuMui.Text = dd.DoLuuMui.ToString();
            }
            
            if(h != null)
            {
                ToneHuong.Text = h.ToneHuong;
                HuongDau.Text = h.HuongDau;
                HuongGiua.Text = h.HuongGiua;
                HuongCuoi.Text = h.HuongCuoi;
            }
        }
    }
}