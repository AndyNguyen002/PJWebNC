using PJWebNC.Entity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;

namespace PJWebNC.Dao
{
    public class DaoNguoiDung
    {
        public static NguoiDung getOne(string _taikhoan, string _matkhau)
        {
            NguoiDung objND = null;

            string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;

            string sql = "select UserID, TaiKhoan, MatKhau, FullName, VaiTro from [NguoiDung] where TaiKhoan = @taikhoan and MatKhau = @matkhau";

            using (SqlConnection conn = new SqlConnection(strConnection))
            {
                SqlCommand sqlCommand = new SqlCommand(sql, conn);
                sqlCommand.Parameters.Add("@taikhoan", System.Data.SqlDbType.VarChar).Value = _taikhoan;
                sqlCommand.Parameters.Add("@matkhau", System.Data.SqlDbType.VarChar).Value = _matkhau;
                sqlCommand.CommandType = System.Data.CommandType.Text;

                conn.Open();
                SqlDataReader reader = sqlCommand.ExecuteReader();

                if (reader.Read())
                {
                    objND = new NguoiDung();
                    objND.UserID = Convert.ToInt32(reader["UserID"]);
                    objND.TaiKhoan = Convert.ToString(reader["TaiKhoan"]);
                    objND.MatKhau = Convert.ToString(reader["MatKhau"]);
                    objND.FullName = Convert.ToString(reader["FullName"]);
                    objND.VaiTro = Convert.ToInt32(reader["VaiTro"]);
                }
                reader.Close();//Đóng đối tượng DataReader
                conn.Close();//Đóng kết nối
                conn.Dispose();//Giải phóng bộ nhớ
                return objND;
            }
        }
        public static NguoiDung getExits(string _taikhoan)
        {
            NguoiDung objND = null;

            string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;

            string sql = "select UserID, TaiKhoan, MatKhau, FullName, VaiTro from [NguoiDung] where TaiKhoan = @taikhoan ";

            using (SqlConnection conn = new SqlConnection(strConnection))
            {
                SqlCommand sqlCommand = new SqlCommand(sql, conn);
                sqlCommand.Parameters.Add("@taikhoan", System.Data.SqlDbType.VarChar).Value = _taikhoan;
                
                sqlCommand.CommandType = System.Data.CommandType.Text;

                conn.Open();
                SqlDataReader reader = sqlCommand.ExecuteReader();

                if (reader.Read())
                {
                    objND = new NguoiDung();
                    objND.UserID = Convert.ToInt32(reader["UserID"]);
                    objND.TaiKhoan = Convert.ToString(reader["TaiKhoan"]);
                    objND.MatKhau = Convert.ToString(reader["MatKhau"]);
                    objND.FullName = Convert.ToString(reader["FullName"]);
                    objND.VaiTro = Convert.ToInt32(reader["VaiTro"]);
                }
                reader.Close();//Đóng đối tượng DataReader
                conn.Close();//Đóng kết nối
                conn.Dispose();//Giải phóng bộ nhớ
                return objND;
            }
        }
    }
}