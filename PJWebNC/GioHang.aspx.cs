using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PJWebNC
{
    public partial class GioHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            
                BindData();

            
            List<Entity.GioHang> lst = Dao.DaoGioHang.getAllByUser((int)Session["UserID"]);
            dtlGioHang.DataSource = lst;
            DataBind();
        }
        protected void BindData()
        {
            Entity.GioHang data = Dao.DaoGioHang.TongTien((int)Session["UserID"]);
            //TongTien.Text = data.TongTien.ToString("C0", new CultureInfo("vi-VN"));
            int money = data.TongTien;
            TongTien.Text = money.ToString("#,# VNĐ");
        }
        protected void bXoa_Click(object sender, EventArgs e)
        {
            //if (Session["UserID"] == null)
            //{
            //    Response.Redirect("DangNhap.aspx");
            //}
            //else
            //{
            //    string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
            //    int pID = Convert.ToInt32(Page.Request.QueryString["id"]);
            //    using (SqlConnection conn = new SqlConnection(strConnection))
            //    {
            //        SqlCommand cmd = new SqlCommand(
            //            "delete from GioHang where IDSanPham = @IDSanPham", conn);
            //        conn.Open();
            //        cmd.Parameters.AddWithValue("@IDSanPham",  );
                 
            //        cmd.ExecuteNonQuery();
            //        conn.Close();
            //        Response.Redirect("GioHang.aspx");
            //    }
            //}
        }
    }
}