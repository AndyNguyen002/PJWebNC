using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PJWebNC
{
    public partial class TaiKhoan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("DangNhap.aspx");
            }
        }
        protected bool ValidatePass()
        {
            if (tbNewPass.Text != tbRePass.Text)
            {
                lbMessage.Text = "Mật khẩu nhập lại không chính xác";
                return false;
            }
            else if (tbNewPass.Text == "")
            {
                return false;
            }
            else { return true; }
            
        }
        protected void bSave_Click(object sender, EventArgs e)
        {
            if (tbPassCurrent.Text != (string)Session["MatKhau"])
            {
                lbMessage.Text = "Mật khẩu hiện tại không chính xác";
            }
            else
            {
                if (ValidatePass())
                {
                    string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
                    using (SqlConnection conn = new SqlConnection(strConnection))
                    {
                        SqlCommand cmd = new SqlCommand(
                            "update NguoiDung set MatKhau = @MatKhau where UserID = @UserID", conn);
                        conn.Open();
                        if(tbNewPass.Text != null)
                        {
                            cmd.Parameters.AddWithValue("@MatKhau", tbNewPass.Text);
                            cmd.Parameters.AddWithValue("@UserID", Session["UserID"]);
                        }
                        
                        cmd.ExecuteNonQuery();
                        conn.Close();
                        lbMessage.Text = "Thay đổi mật khẩu thành công";
                        tbNewPass.Text = "";
                        tbRePass.Text = "";
                        tbPassCurrent.Text = ""; 
                    }
                }
            }
        }
    }
}