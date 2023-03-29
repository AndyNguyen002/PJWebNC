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
            //tbFullName.Text = (string)Session["FullName"];
        }
        protected int ValidateCheck()
        {
            if(tbFullName.Text != null && tbPassCurrent.Text == null)
            {
                //trường hợp 1 chỉ nhập full name và trống mật khẩu ==> đổi tên
                return 1;
            }
            else if (tbFullName.Text == null && tbPassCurrent.Text == null) 
            {
                //trường hợp 2 chỉ nhập mật khẩu và trống fullname => đổi mật khẩu
                return 2;
            }
            else
            {
                //nhập cả 2 => đổi cả fullname lẫn mật kh
                return 3;
            }
        }
        protected bool ValidateChangePass()
        {
            if (tbPassCurrent.Text == null || tbNewPass.Text == null || tbRePass.Text == null)
            {
                //bất cứ textbox nào trống khi đổi mật khẩu thì không hợp lệ 
                return false;
            }
            else if (tbNewPass.Text != tbRePass.Text)
            {
                //mật khẩu mới và nhập lại mật khẩu không giống nhau
                return false;
            }
            else if (tbPassCurrent.Text != (string)Session["TaiKhoan"])
            {
                //Mật khẩu cũ không chính xác
                return false;
            }
            else
            {
                return true;
            }
        }
        protected void bSave_Click(object sender, EventArgs e)
        {
            if (ValidateCheck() == 1)
            {
                //đổi tên code
                string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(strConnection))
                {
                    SqlCommand cmd = new SqlCommand(
                            "update NguoiDung set FullName = '@FullName' where UserID = @UserID", conn);

                    conn.Open();
                    cmd.Parameters.AddWithValue("@UserID", Session["UserID"]);
                    cmd.Parameters.AddWithValue("@FullName", tbFullName.Text);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }

            
        }
    }
}