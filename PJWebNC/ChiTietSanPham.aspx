<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="ChiTietSanPham.aspx.cs" Inherits="PJWebNC.ChiTietSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    <link rel="stylesheet" href="ChiTietSanPham.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
    <div class="Content">
            <div class="detail">
                <div class="c-left">
                    <div class="imgProduct">
                        <div class="imgTop">
                            <asp:Image runat="server" ID="image1" Width="400px" Height="400px" />
                        </div>
                        <div class="imgBot">
    
                        </div>
                    </div>
                    <h3 style="font-size: 33px; margin: 20px 0px;">MÔ TẢ</h3>
                    <p style="font-size: 18px;">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Voluptas adipisci quasi facere repellat quod nesciunt, perferendis, minus laudantium repudiandae soluta facilis blanditiis eius itaque corrupti, in debitis vero perspiciatis illum.</p>
                </div>
                <div class="c-right">
                    
                    <span style="font-size: 18px; margin-bottom: 25px; margin-top: 30px;"><asp:label ID="ThuongHieu" runat="server" ></asp:label></span>
                    <span style="font-size: 40px; margin-bottom: 25px;"><asp:label ID="TenSP" runat="server" ></asp:label></span>
                    <span style="font-size: 18px; margin-bottom: 25px;"><asp:label ID="GioiTinh" runat="server" ></asp:label></span>
                    <span style="font-size: 25px; margin-bottom: 40px;"><asp:label ID="GiaBan" runat="server" ></asp:label> VND</span>
                    <span style="font-size: 18px; margin-bottom: 20px;">Lorem, ipsum.</span>
                    
                    <div class="chucnang">
                        <%--<input class="soluong" type="number"> 
                        <button class="addcart"></button>--%>
                        <asp:TextBox ID="Soluong" Width="170" runat="server"></asp:TextBox> 
                        <asp:Button ID="ThemCart" Width="420" runat="server" BackColor="black" ForeColor="white" Text="THÊM VÀO GIỎ HÀNG" />
                    </div>
    
                    <div class="panel">
                        
                    </div>
                </div>
            </div>
            
            <div class="newProduct">
                <p class="tieude">Sản phẩm mới nhất</p>
                <div class="ProductShow">
                    <asp:DataList ID="dtlNew" runat="server" RepeatDirection="Horizontal">
                        <ItemTemplate>
                            <a href="ChiTietSanPham.aspx?id=<%#Eval("IDSanPham") %>">
                                <div class="itemShow">
                                    <div class="picProduct">
                                        <asp:Image ID="imgg" Width="200" Height="230" runat="server" ImageUrl=<%# Eval("Anh") %> />
                                    </div>
                                    <p class="HangSX"><%#Eval("TenThuongHieu") %></p>

                                    <p><%#Eval("TenSP") %></p>

                                    <h4><%#Eval("GiaBan") %></h4>
                                </div>
                            </a>
                        </ItemTemplate>
                    </asp:DataList>
                    
                </div>
            </div>
            <div class="newProduct">
                <p class="tieude">Sản phẩm liên quan</p>
                <div class="ProductShow">
                    <asp:DataList ID="dtlRelated" runat="server" RepeatDirection="Horizontal">
                        <ItemTemplate>
                            <a href="ChiTietSanPham.aspx?id=<%#Eval("IDSanPham") %>">
                                <div class="itemShow">
                                    <div class="picProduct">
                                        <asp:Image ID="imgg" Width="200" Height="230" runat="server" ImageUrl=<%# Eval("Anh") %> />
                                    </div>
                                    <p class="HangSX"><%#Eval("TenThuongHieu") %></p>

                                    <p><%#Eval("TenSP") %></p>

                                    <h4><%#Eval("GiaBan") %></h4>
                                </div>
                            </a>
                        </ItemTemplate>
                    </asp:DataList>
                    
                </div>
            </div>
        </div>
</asp:Content>
