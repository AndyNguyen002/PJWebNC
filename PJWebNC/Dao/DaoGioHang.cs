﻿using PJWebNC.Entity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace PJWebNC.Dao
{
    public class DaoGioHang
    {
        public static List<Entity.GioHang> getAllByUser(int _userid)
        {
            List<Entity.GioHang> lstSP = new List<Entity.GioHang>();
            //Lấy thông tin chuỗi kết nối từ Web.config
            string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
            //Viết câu lệnh truy vấn
            string strSQL = "select GioHang.IDSanPham, Anh, TenSP, GiaBan, SoLuong from SanPham, NguoiDung, GioHang where SanPham.IDSanPham = GioHang.IDSanPham and NguoiDung.UserID = GioHang.UserID and GioHang.UserID = '"+_userid+"'";
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
                Entity.GioHang objSP = null;
                while (sqlDataReader.Read())
                {
                    objSP = new Entity.GioHang();
                    objSP.IDSanPham = Convert.ToInt32(sqlDataReader["IDSanPham"]);
                    objSP.TenSP = Convert.ToString(sqlDataReader["TenSP"]);
                    //objSP.TenThuongHieu = Convert.ToString(sqlDataReader["TenThuongHieu"]);
                    objSP.Anh = Convert.ToString(sqlDataReader["Anh"]);
                    objSP.GiaBan = Convert.ToInt32(sqlDataReader["GiaBan"]);
                    objSP.SoLuong = Convert.ToInt32(sqlDataReader["SoLuong"]);
                    lstSP.Add(objSP);
                }
                sqlDataReader.Close();//Đóng đối tượng DataReader
                sqlConnection.Close();//Đóng kết nối
                sqlConnection.Dispose();//Giải phóng bộ nhớ
                return lstSP;

            }
        }
        public static Entity.GioHang TongTien(int _userid)
        {
            Entity.GioHang objND = null;

            string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;

            string sql = "select  UserID, SUM(GiaBan * SoLuong) as TongTien from SanPham, GioHang where GioHang.IDSanPham = SanPham.IDSanPham and UserID = '" + _userid + "' group by UserID";

            using (SqlConnection conn = new SqlConnection(strConnection))
            {
                SqlCommand sqlCommand = new SqlCommand(sql, conn);
                sqlCommand.CommandType = System.Data.CommandType.Text;

                conn.Open();
                SqlDataReader reader = sqlCommand.ExecuteReader();

                if (reader.Read())
                {
                    objND = new Entity.GioHang();
                    objND.TongTien = Convert.ToInt32(reader["TongTien"]);
                }
                reader.Close();//Đóng đối tượng DataReader
                conn.Close();//Đóng kết nối
                conn.Dispose();//Giải phóng bộ nhớ
                return objND;
            }
        }
    }
}