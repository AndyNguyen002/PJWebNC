<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="PJWebNC.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    <title>Trang chủ</title>
    <link rel="stylesheet" href="TrangChu.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
    <!-- content -->
        <div class="Content">
            <!-- brand -->
            <div class="brand">
                <p>Thương hiệu nổi tiếng</p>
                <div class="logoBrand" style="border: none">

                    <div class="brand1">
                        
                        <div class="brand1">
                        <asp:DataList ID="DataList1" RepeatColumns="6" RepeatDirection="Horizontal" runat="server">
                            <ItemTemplate>
                                <div class="itemBrand" style="display:flex; justify-content:center; align-items:center">
                                    <asp:Image ID="LogoBrandLabel" runat="server" Width="160" Height="160" ImageUrl='<%# Eval("LogoBrand") %>' />
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                        </div>
                        
                        
                    </div>
                </div>
                
            </div>
            <!-- brand -->

            <!--hotProduct  -->
            <div class="hotProduct">
                    <p>Sản phẩm nổi bật</p>
                    <div class="typeProduct">
                        <h3>Nước hoa nam</h3>
                        <h3>Nước hoa nữ</h3>
                        <h3>Unisex</h3>
                    </div>

                    <div class="Product">
                        
                        <asp:DataList ID="SanPham" runat="server" RepeatDirection="Horizontal">
                            <ItemTemplate>
                                <a href="ChiTietSanPham.aspx?id=<%#Eval("IDSanPham") %>">
                                    <div class="itemProduct">
                                        <div class="picProduct">
                                            <asp:Image ID="img1" runat="server" Width="200" Height="250" ImageUrl='<%# Eval("Anh") %>' />
                                        </div>
                                        <p class="HangSX"><%# Eval("TenThuongHieu") %></p>

                                        <p><%# Eval("TenSP") %></p>

                                        <h4 style="text-align: center"><%#Eval("GiaBan") %> đ</h4>
                                    </div>
                                </a>
                            </ItemTemplate>
                        </asp:DataList>
                        
                    </div>
            </div>
            <!--hotProduct  -->
            
            <!--Video  -->
            <p>Perfume bar đầu tiên tại Việt Nam</p>
            <iframe width="1200" height="675" src="https://www.youtube.com/embed/Fiycfl4sJYE" title="Perfume Bar Đầu Tiên Tại Việt Nam! | Đập Hộp Nút Bạc Youtube | Hoàng XXIV"
             frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
            <!--Video  -->


            <!-- Li do chon -->
            <p style="margin-top: 100px;">Tại sao chọn xxiv store</p>
            <div class="LiDoChon">
                <div class="reason">
                    <div class="iconWhy">
                        <img src="Icon/grommet-icons_shield-security.png" alt="">
                    </div>
                    <p style="font-size: 24px;">sản phẩm chính hãng</p>
                    <p style="font-size: 18px;">sản phẩm nước hoa được mua trực tiếp tại store ở pháp, cam kết chính hãng</p>
                </div>
                <div class="reason">
                    <div class="iconWhy">
                        <img src="Icon/free-ship.png" alt="">
                    </div>
                    <p style="font-size: 24px;">free ship toàn quốc</p>
                    <p style="font-size: 18px;">xxiv áp dụng freeship cho tất cả các khách hàng trên toàn quốc. chúng tôi chưa áp dụng hình thức giao hàng quốc tế tại thời điểm này</p>
                
                </div>
                <div class="reason">
                    <div class="iconWhy">
                        <img src="Icon/gift.png" alt="">
                    </div>
                    <p style="font-size: 24px;">thành viên thân thiết</p>
                    <p style="font-size: 18px;">thành viên vàng sẽ được giảm 5% / đơn hàng. với thành viên bạc khách được giảm 3% / đơn hàng.</p>
                
                </div>
            </div>
            <!-- Li do chon -->
            

            <!-- info -->
            <p>xxiv store</p>
            <h3>Số 25 Ngõ Thái Hà, Đống Đa, Hà Nội | 525/44 Tô Hiến Thành, P14, Q10, TP. Hồ Chí Minh</h3>
            <h3>090 721 9889| 093 194 8668</h3>
            <h3>Giờ mở cửa: Các ngày trong tuần từ 9:00 – 21:00</h3>
            <!-- info -->
        </div>

        <!-- content -->
</asp:Content>
