using PJWebNC.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PJWebNC
{
    public partial class DanhSach : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int pID = Convert.ToInt32(Request.QueryString["id"]);
            if(pID == 0)
            {
                List<SanPham> lst = Dao.DaoSanPham.getAll();
                dtlDanhSachSanPham.DataSource = lst;
                DataBind();
            }
            else
            {
                List<SanPham> lstgetHsx = Dao.DaoSanPham.getAllbyHangSX(Convert.ToString(pID));
                dtlDanhSachSanPham.DataSource=lstgetHsx;
                DataBind();
            }

            FilterGioiTinh();
            FilterSeason();
        }
        private void FilterGioiTinh()
        {
            if(cbNam.Checked == true)
            {
                List<SanPham> lsp = Dao.DaoSanPham.getSPGioiTinh(1);
                cbNu.Checked = false;
                cbUnisex.Checked = false;
                dtlDanhSachSanPham.DataSource = lsp;
                dtlDanhSachSanPham.DataBind();
                
            }
            else if (cbNu.Checked == true)
            {
                List<SanPham> lsp = Dao.DaoSanPham.getSPGioiTinh(2);
                cbNam.Checked = false;
                cbUnisex.Checked = false;
                dtlDanhSachSanPham.DataSource = lsp;
                dtlDanhSachSanPham.DataBind();
            }
            else if (cbUnisex.Checked == true)
            {
                
                List<SanPham> lsp = Dao.DaoSanPham.getSPGioiTinh(3);
                cbNu.Checked = false;
                cbNam.Checked = false;
                dtlDanhSachSanPham.DataSource = lsp;
                dtlDanhSachSanPham.DataBind();
            }
        }
        private void FilterSeason()
        {
            if(cbXuan.Checked == true)
            {
                List<SanPham> lsp = Dao.DaoSanPham.getSPSeason(1);
                cbHa.Checked = false;
                cbThu.Checked = false;  
                cbDong.Checked = false;
                dtlDanhSachSanPham.DataSource = lsp;
                dtlDanhSachSanPham.DataBind();
            }
            else if (cbThu.Checked == true)
            {
                List<SanPham> lsp = Dao.DaoSanPham.getSPSeason(3);
                cbHa.Checked = false;
                cbXuan.Checked = false;
                cbDong.Checked = false;
                dtlDanhSachSanPham.DataSource = lsp;
                dtlDanhSachSanPham.DataBind();
            }
            else if (cbHa.Checked == true)
            {
                List<SanPham> lsp = Dao.DaoSanPham.getSPSeason(2);
                cbXuan.Checked = false;
                cbThu.Checked = false;
                cbDong.Checked = false;
                dtlDanhSachSanPham.DataSource = lsp;
                dtlDanhSachSanPham.DataBind();
            }
            else if (cbDong.Checked == true)
            {
                List<SanPham> lsp = Dao.DaoSanPham.getSPSeason(4);
                cbHa.Checked = false;
                cbThu.Checked = false;
                cbXuan.Checked = false;
                dtlDanhSachSanPham.DataSource = lsp;
                dtlDanhSachSanPham.DataBind();
            }
        }

    }
}