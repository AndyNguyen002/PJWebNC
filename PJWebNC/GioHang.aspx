<%@ Page Title="Giỏ hàng" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="PJWebNC.GioHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    <link rel="stylesheet" href="GioHang.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
    <!-- Content -->
    <div class="Content">
        <!-- c-left -->
        <div class="c-left">
            <h2>Sản phẩm đã chọn</h2>

            <asp:DataList ID="dtlGioHang" runat="server" Width="100%" RepeatDirection="Vertical" DataKeyField="IDSanPham" >
                <ItemTemplate>
                    <div class="product-grid">
                        <div class="imgPD">
                            <img src="<%# Eval("Anh") %>" alt="">
                        </div>
                        <div class="tenPD">
                            <h2> <asp:Label ID="lbIDSanPham" runat="server"  Text='<%#Eval("IDSanPham") %>' ForeColor="White"></asp:Label>
                                <%#Eval("TenSP") %> </h2>
                                
                            <h2><%#Eval("GiaBan", "{0:N0}") %></h2>
                        </div>
                        <div class="inputPD" style="display:flex;
    justify-content:center;
    align-items:center;
    flex-direction:column;">
                            <asp:TextBox ID="tbSoLuong" runat="server" Width="100" Text='<%#Eval("SoLuong") %>' ></asp:TextBox>
                            <asp:Button ID="bXoa" runat="server" Text="Xóa sản phẩm" width="100" Height="30" CommandName="Select"/>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
            <asp:Button ID="bCapNhap" runat="server" Text="Cập nhập" Width="100" Height="50"  />

        </div>
        <!-- c-left -->

        <!-- c-right -->
        <div class="c-right">
            <h2>Phiếu thanh toán</h2>

            <div class="TongTien" style="display:flex; flex-direction:row; justify-content:space-between">
                <h3 style="font-size: 25px; text-align:left;">Tạm tính: </h3>
                <h3 style="font-size: 25px;" >
                    <asp:Label ID="TongTien"  runat="server" Text=""></asp:Label></h3>
            </div>

            <div class="buttonChucNang">
                
            </div>
        </div>
        <!-- c-right -->
    </div>
    <!-- Content -->
</asp:Content>
