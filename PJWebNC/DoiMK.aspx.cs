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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("DangNhap.aspx");
            }
            
        }
        
        protected void bLuu_Click(object sender, EventArgs e)
        {
            if (tbCurrentPass.Text == "")
            {
                lbMessage.Text = "Hãy nhập đủ thông tin";
                
            }
            else if (tbNewPass.Text == "" && tbRePass.Text == "")
            {
                lbMessage.Text = "Vui lòng đủ thông tin";
            }
            else if(tbNewPass.Text != tbRePass.Text)
            {
                lbMessage.Text = "Nhập lại mật khẩu mới chưa chính xác";
                
            }
            else if (tbCurrentPass.Text != (string)Session["MatKhau"])
            {
                lbMessage.Text = "Mật khẩu cũ chưa chính xác";
               
            }
            else if(tbCurrentPass.Text == (string)Session["MatKhau"] && tbNewPass.Text != "" && tbRePass.Text != "" )
            {
                string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(strConnection))
                {
                    // Tạo command để thực hiện truy vấn update
                    SqlCommand cmd = new SqlCommand(
                        "UPDATE NguoiDung SET MatKhau = @MatKhau WHERE UserID = @UserID", conn);

                    // Mở kết nối đến CSDL
                    conn.Open();

                    // Truyền tham số vào command
                    cmd.Parameters.AddWithValue("@UserID", Session["UserID"]);
                    cmd.Parameters.AddWithValue("@MatKhau", tbNewPass.Text);

                    // Thực hiện truy vấn update
                    cmd.ExecuteNonQuery();

                    // Đóng kết nối
                    conn.Close();
                }
                Session["MatKhau"] = tbNewPass.Text;
            }
            Response.Redirect("DoiMK.aspx");
        }
    }
}