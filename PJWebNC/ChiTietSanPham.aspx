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
                        <asp:Button ID="ThemCart" Width="420" runat="server" Text="THÊM VÀO GIỎ HÀNG" />
                    </div>
    
                    <div class="panel">
                        
                    </div>
                </div>
            </div>
            
            <div class="newProduct">
                <p class="tieude">Sản phẩm mới nhất</p>
                <div class="ProductShow">
                    <div class="itemShow">
                        <div class="picProduct">
                            <img style=" width: 200px; height: 230px;" src="https://xxivstore.com/wp/content/uploads/2023/02/Nuoc-hoa-Montblanc-Signature-300x300.png" alt="">
                        </div>
                        <p class="HangSX">HangSX</p>

                        <p>TenSP</p>

                        <h4>GiaTien</h4>
                    </div>
                    <div class="itemShow">
                        
                    </div>
                    <div class="itemShow">
                        
                    </div>
                    <div class="itemShow">
                        
                    </div>
                    <div class="itemShow">
                        
                    </div>
                </div>
            </div>
            <div class="newProduct">
                <p class="tieude">Sản phẩm liên quan</p>
                <div class="ProductShow">
                    <div class="itemShow">
                        <div class="picProduct">
                            <img style=" width: 200px; height: 230px;" src="" alt="">
                        </div>
                        <p class="HangSX">HangSX</p>

                        <p>TenSP</p>

                        <h4>GiaTien</h4>
                    </div>
                    <div class="itemShow">
                        
                    </div>
                    <div class="itemShow">
                        
                    </div>
                    <div class="itemShow">
                        
                    </div>
                    <div class="itemShow">
                        
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
