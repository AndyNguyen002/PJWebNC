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

        }
        public void BindData(string pID)
        {
            SanPham sp = Dao.DaoSanPham.getOne(pID);


            ThuongHieu.Text = sp.TenThuongHieu.ToString();
            TenSP.Text = sp.TenSP.ToString();
            GiaBan.Text = sp.GiaBan.ToString();
            GioiTinh.Text = sp.GioiTinh.ToString();
            image1.ImageUrl = sp.Anh;
        }
    }
}