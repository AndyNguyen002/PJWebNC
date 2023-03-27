using PJWebNC.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PJWebNC
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["UserID"] == null)
                {
                    Response.Redirect("DangNhap.aspx");
                }
                lbTen.Text = (string)Session["FullName"];
                tbFullName.Text = (string)Session["FullName"];
            }

        }

        protected void bDangXuat_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("DangNhap.aspx");
        }
        protected bool ValidateChangePass()
        {
            if (tbPassCurrent.Text != (string)Session["MatKhau"])
            {
                lbMessage.Text = "Mật khẩu hiện tại không chính xác";
                return false;
            }
            else
            {
                return true;
            }
        }
        protected void bSave_Click(object sender, EventArgs e)
        {
            ValidateChangePass();
        }
    }
}