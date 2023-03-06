﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="DanhSach.aspx.cs" Inherits="PJWebNC.DanhSach" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    <title>Danh sách sản phẩm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link rel="stylesheet" href="DanhSach.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
<!-- Content -->
        <div class="Content" style="height:auto;">
            <p style="font-size: 50px; text-align:center">Shop</p>
            <div class="Content1" style="height:2700px;">
                <div class="c-left">
                <div class="dsThuongHieu">
                    <h2>THƯƠNG HIỆU</h2>

                </div>
                <div class="dsGioiTinh" >
                    <h2>GIỚI TÍNH</h2>
                    <div style="margin-left: 55px; margin-top: 20px">
                        <asp:CheckBox ID="cbNam" Width="65" Text="Nam" runat="server" AutoPostBack="true" />
                        <asp:CheckBox ID="cbNu" Text="Nữ" Width="55" runat="server" AutoPostBack="true" />
                        <asp:CheckBox ID="cbUnisex" Text="Unisex" runat="server" AutoPostBack="true" />
                    </div>
                </div>
                <div class="dsMua">
                    <h2>MÙA</h2>
                    <div style="margin-left: 55px; margin-top: 25px">

                        <asp:CheckBox ID="cbXuan" Text="Xuân" Width="55" runat="server" AutoPostBack="true" />
                        <asp:CheckBox ID="cbHa" Width="40" runat="server" Text="Hạ" AutoPostBack="true" />
                        <asp:CheckBox ID="cbThu" Width="50" runat="server" Text="Thu" AutoPostBack="true" />
                        <asp:CheckBox ID="cbDong" Width="55" runat="server" Text="Đông" AutoPostBack="true" />
                    </div>
                </div>
                <div class="dsGiaTien">
                    <h2>GIÁ TIỀN</h2>

                </div>
                </div>
                <div class="c-right">
                    
                    <asp:DataList ID="dtlDanhSachSanPham" RepeatColumns="5" RepeatDirection="Horizontal" runat="server"   >
                        <ItemTemplate>
                            <a href="ChiTietSanPham.aspx?id=<%# Eval("IDSanPham") %>">
                                <div class="itemProduct1">
                                    <div class="picProduct1">
                                        <asp:Image ID="Image1" runat="server" Width="100%" Height="100%" ImageUrl='<%# Eval("Anh") %>' />
                                    </div>
                                    <h3 class="HangSX1"><%# Eval("TenThuongHieu") %>
                                    </h3>
                                    <h3 class="nameProduct1" style="text-align:center;"><%# Eval("TenSP") %>
                                    </h3>
                                    <h3 class="nameProduct1"><%# Eval("GiaBan") %>
                                    </h3>
                                </div>
                            </a>
                        </ItemTemplate>
                    </asp:DataList>
      
                    
                </div>
            </div>
        </div>
        <!-- Content -->
</asp:Content>
