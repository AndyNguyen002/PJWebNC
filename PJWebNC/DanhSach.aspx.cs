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

            
        }
        private void ValidateGioiTinh()
        {
            
        }
    }
}