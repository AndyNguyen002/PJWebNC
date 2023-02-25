using PJWebNC.Entity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Xml.Linq;

namespace PJWebNC.Dao
{
    public class DaoSanPham
    {
        public static List<SanPham> getAll()
        {
            List<SanPham> lstSP = new List<SanPham>();
            //Lấy thông tin chuỗi kết nối từ Web.config
            string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
            //Viết câu lệnh truy vấn
            string strSQL = "SELECT IDSanPham, TenThuongHieu, TenSP, Anh, GiaBan FROM SanPham, ThuongHieu where SanPham.MaThuongHieu = ThuongHieu.MaThuongHieu";
            //Định nghĩa đối tượng Connection
            using (SqlConnection sqlConnection = new SqlConnection(strConnection))
            {
                //Khởi tạo đối tượng Command
                SqlCommand sqlCommand = new SqlCommand(strSQL, sqlConnection);
                sqlCommand.CommandType = System.Data.CommandType.Text;
                //Mở kết nối tới CSDL
                sqlConnection.Open();
                //Sử dụng đối tượng DataReader để đọc dữ liệu
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
                SanPham objSP = null;
                while (sqlDataReader.Read())
                {
                    objSP = new SanPham();
                    objSP.IDSanPham = Convert.ToInt32(sqlDataReader["IDSanPham"]);
                    objSP.TenSP = Convert.ToString(sqlDataReader["TenSP"]);
                    objSP.TenThuongHieu = Convert.ToString(sqlDataReader["TenThuongHieu"]);
                    objSP.Anh = Convert.ToString(sqlDataReader["Anh"]);
                    objSP.GiaBan = Convert.ToInt32(sqlDataReader["GiaBan"]);
                    lstSP.Add(objSP);
                }
                sqlDataReader.Close();//Đóng đối tượng DataReader
                sqlConnection.Close();//Đóng kết nối
                sqlConnection.Dispose();//Giải phóng bộ nhớ
                return lstSP;

            }
        }
        public static List<SanPham> getAllHot()
        {
            List<SanPham> lstSP = new List<SanPham>();
            //Lấy thông tin chuỗi kết nối từ Web.config
            string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
            //Viết câu lệnh truy vấn
            string strSQL = "SELECT IDSanPham, TenThuongHieu, TenSP, Anh, GiaBan FROM SanPham, ThuongHieu where SanPham.MaThuongHieu = ThuongHieu.MaThuongHieu and SanPham.Hot = 1";
            //Định nghĩa đối tượng Connection
            using (SqlConnection sqlConnection = new SqlConnection(strConnection))
            {
                //Khởi tạo đối tượng Command
                SqlCommand sqlCommand = new SqlCommand(strSQL, sqlConnection);
                sqlCommand.CommandType = System.Data.CommandType.Text;
                //Mở kết nối tới CSDL
                sqlConnection.Open();
                //Sử dụng đối tượng DataReader để đọc dữ liệu
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
                SanPham objSP = null;
                while (sqlDataReader.Read())
                {
                    objSP = new SanPham();
                    objSP.IDSanPham = Convert.ToInt32(sqlDataReader["IDSanPham"]);
                    objSP.TenSP = Convert.ToString(sqlDataReader["TenSP"]);
                    objSP.TenThuongHieu = Convert.ToString(sqlDataReader["TenThuongHieu"]);
                    objSP.Anh = Convert.ToString(sqlDataReader["Anh"]);
                    objSP.GiaBan = Convert.ToInt32(sqlDataReader["GiaBan"]);
                    lstSP.Add(objSP);
                }
                sqlDataReader.Close();//Đóng đối tượng DataReader
                sqlConnection.Close();//Đóng kết nối
                sqlConnection.Dispose();//Giải phóng bộ nhớ
                return lstSP;

            }
        }
        public static SanPham getOneById(string _name)
        {
            SanPham lstSP = new SanPham();
            //Lấy thông tin chuỗi kết nối từ Web.config
            string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
            //Viết câu lệnh truy vấn
            string strSQL = "SELECT TenThuongHieu, TenSP, Anh, GiaBan FROM SanPham, ThuongHieu where SanPham.MaThuongHieu = ThuongHieu.MaThuongHieu and TenSP = '" + _name + "'";
            //Định nghĩa đối tượng Connection
            using (SqlConnection sqlConnection = new SqlConnection(strConnection))
            {
                //Khởi tạo đối tượng Command
                SqlCommand sqlCommand = new SqlCommand(strSQL, sqlConnection);
                sqlCommand.CommandType = System.Data.CommandType.Text;
                //Mở kết nối tới CSDL
                sqlConnection.Open();
                //Sử dụng đối tượng DataReader để đọc dữ liệu
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
                SanPham objSP = null;
                while (sqlDataReader.Read())
                {
                    objSP = new SanPham();
                    objSP.IDSanPham = Convert.ToInt32(sqlDataReader["IDSanPham"]);
                    objSP.TenSP = Convert.ToString(sqlDataReader["TenSP"]);
                    objSP.TenThuongHieu = Convert.ToString(sqlDataReader["TenThuongHieu"]);
                    objSP.Anh = Convert.ToString(sqlDataReader["Anh"]);
                    objSP.GiaBan = Convert.ToInt32(sqlDataReader["GiaBan"]);
                    
                }
                sqlDataReader.Close();//Đóng đối tượng DataReader
                sqlConnection.Close();//Đóng kết nối
                sqlConnection.Dispose();//Giải phóng bộ nhớ
                return lstSP;

            }
        }

        public static SanPham getOne(string _id)
        {
            SanPham objND = null;

            string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;

            string sql = "SELECT GioiTinh.GioiTinh, TenThuongHieu, TenSP, Anh, GiaBan FROM SanPham, ThuongHieu, GioiTinh where GioiTinh.MaGioiTinh = SanPham.GioiTinh and SanPham.MaThuongHieu = ThuongHieu.MaThuongHieu and IDSanPham = '"+_id+"'";

            using (SqlConnection conn = new SqlConnection(strConnection))
            {
                SqlCommand sqlCommand = new SqlCommand(sql, conn);
                sqlCommand.CommandType = System.Data.CommandType.Text;

                conn.Open();
                SqlDataReader reader = sqlCommand.ExecuteReader();

                if (reader.Read())
                {
                    objND = new SanPham();
                    objND.GioiTinh = Convert.ToString(reader["GioiTinh"]);
                    objND.TenSP = Convert.ToString(reader["TenSP"]);
                    objND.TenThuongHieu = Convert.ToString(reader["TenThuongHieu"]);
                    objND.Anh = Convert.ToString(reader["Anh"]);
                    objND.GiaBan = Convert.ToInt32(reader["GiaBan"]);
                }
                reader.Close();//Đóng đối tượng DataReader
                conn.Close();//Đóng kết nối
                conn.Dispose();//Giải phóng bộ nhớ
                return objND;
            }
        }
    }
}