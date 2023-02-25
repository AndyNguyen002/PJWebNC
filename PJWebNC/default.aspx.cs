using PJWebNC.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PJWebNC
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<HangSX> lst = Dao.DaoHangSX.getHotHSX();
            DataList1.DataSource = lst;
            DataBind();

            List<SanPham> lstSanPham = Dao.DaoSanPham.getAllHot();
            SanPham.DataSource = lstSanPham;
            DataBind();
        }
    }
}