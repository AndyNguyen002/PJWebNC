<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="DanhSach.aspx.cs" Inherits="PJWebNC.DanhSach" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    <title>Danh sách sản phẩm</title>
    <link rel="stylesheet" href="DanhSach.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
<!-- Content -->
        <div class="Content">
            <p style="font-size: 50px;">Shop</p>
            <div class="Content1">
                <div class="c-left">
                <div class="dsThuongHieu">
                    <h2>THƯƠNG HIỆU</h2>
                </div>
                <div class="dsGioiTinh">
                    <h2>GIỚI TÍNH</h2>

                </div>
                <div class="dsMua">
                    <h2>MÙA</h2>

                </div>
                <div class="dsGiaTien">
                    <h2>GIÁ TIỀN</h2>

                </div>
                </div>
                <div class="c-right">
                    
                    <asp:DataList ID="dtlDanhSachSanPham" RepeatColumns="5" RepeatDirection="Horizontal" runat="server" >
                        <ItemTemplate>
                            <a href="ChiTietSanPham.aspx?id=<%# Eval("IDSanPham") %>">
                                <div class="itemProduct1">
                                    <div class="picProduct1">
                                        <asp:Image ID="Image1" runat="server" Width="100%" Height="100%" ImageUrl='<%# Eval("Anh") %>' />
                                    </div>
                                    <h3 class="HangSX1"><%# Eval("TenThuongHieu") %>
                                    </h3>
                                    <h3 class="nameProduct1"><%# Eval("TenSP") %>
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
