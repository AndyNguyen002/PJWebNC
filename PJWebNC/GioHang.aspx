<%@ Page Title="Giỏ hàng" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="PJWebNC.GioHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    <link rel="stylesheet" href="GioHang.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
    <!-- Content -->
    <div class="Content">
        <!-- c-left -->
        <div class="c-left">
            <h2>Sản phẩm đã chọn</h2>

            <asp:DataList ID="dtlGioHang" runat="server" Width="100%" DataKeyField="IDSanPham" >
                <ItemTemplate>
                    <div class="product-grid ">
                        <div class="imgPD">
                            <img src="<%# Eval("Anh") %>" alt="">
                        </div>
                        <div class="tenPD d-flex justify-content-center align-items-lg-center">
                            <h2> <%--<asp:Label ID="lbIDSanPham" runat="server"  Text='<%#Eval("IDSanPham") %>' ForeColor="White"></asp:Label>--%>
                                <%#Eval("TenSP") %> </h2>
                                
                            <h2><%#Eval("GiaBan", "{0:N0}") %></h2>
                        </div>
                        <div class="inputPD" style="display:flex;
    justify-content:center;
    align-items:center;
    flex-direction:column;">
                            <asp:TextBox ID="tbSoLuong" runat="server" Width="100" Text='<%#Eval("SoLuong") %>' ></asp:TextBox>
                            <asp:Button ID="bXoa" runat="server" Text="Xóa sản phẩm" width="120" Height="30" CommandName="Select"/>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
            <div class="" style="width:100%; display:flex; justify-content:center;">
                <asp:Button ID="bCapNhap" OnClick="bCapNhap_Click" runat="server" Text="Cập nhập" Width="100" Height="50"  />
            </div>

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
