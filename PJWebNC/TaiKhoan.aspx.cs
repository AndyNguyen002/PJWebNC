using PJWebNC.Dao;
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
        

        protected int CheckTB()
        {

            if (tbFullName.Text != null && tbNewPass.Text == null)
            {
                return 1;
            }
            else if (tbFullName.Text == null && tbNewPass.Text != null)
            {
                return 2;
            }
            else if (tbFullName.Text != null && tbNewPass.Text != null) 
            {
                return 3;
            }
            return 0;
            
        }
        
        protected void bLuu_Click(object sender, EventArgs e)
        {
            
                // Tạo kết nối tới CSDL
                string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(strConnection))
                {
                    // Tạo command để thực hiện truy vấn update
                    SqlCommand cmd = new SqlCommand(
                        "UPDATE NguoiDung SET FullName = @FullName WHERE UserID = @UserID", conn);

                    // Mở kết nối đến CSDL
                    conn.Open();

                    // Truyền tham số vào command
                    cmd.Parameters.AddWithValue("@UserID", Session["UserID"]);
                    cmd.Parameters.AddWithValue("@FullName", tbFullName.Text);

                    // Thực hiện truy vấn update
                    cmd.ExecuteNonQuery();

                    // Đóng kết nối
                    conn.Close();
                }
                Session["FullName"] = tbFullName.Text;

        }
    }
}