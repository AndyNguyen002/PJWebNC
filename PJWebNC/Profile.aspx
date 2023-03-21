<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="PJWebNC.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="TaiKhoan.css" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
    <style>
        .active{
            background-color:white;
        }
    </style>
    <div class="section-TaiKhoan">
        <div class="container-TaiKhoan">
            <div class="grid-top-TaiKhoan" >
                <div class="uk-first-column">
                    <div>     
                        <h1 class="TaiKhoan-title">Tài khoản của tôi</h1>
                    </div>
                </div>
            </div>
        
            <div class="grid-bot-TaiKhoan" style="width:1200px">
                <div class="first-column-TaiKhoan">
                    <div>
                        <div class="menu-QuanLyTaiKhoan" >
                            
                                <div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical" >
                                    <button class="nav-link active" id="v-pills-home-tab" data-bs-toggle="pill" data-bs-target="#v-pills-home" type="button" role="tab" aria-controls="v-pills-home" aria-selected="true">Trang tài khoản</button>
                                    <button class="nav-link" style="color:black" id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#v-pills-profile" type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false">Đơn hàng</button>
                                    <button class="nav-link" id="v-pills-messages-tab" data-bs-toggle="pill" data-bs-target="#v-pills-messages" type="button" role="tab" aria-controls="v-pills-messages" aria-selected="false">Địa chỉ</button>
                                    <button class="nav-link" id="v-pills-settings-tab" data-bs-toggle="pill" data-bs-target="#v-pills-settings" type="button" role="tab" aria-controls="v-pills-settings" aria-selected="false">Tài khoản</button>
                                    <asp:Button runat="server" ID="bDangXuat" CssClass="nav-link" OnClick="bDangXuat_Click" Text="Đăng xuất"/>
                                </div>

                            <div class="menu-QuanLyTaiKhoan-content" style="margin-left:100px">
                                <div class="tab-content" id="v-pills-tabContent">
                                    <%-- Trang tai khoan --%>
                                    <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                                        <div class="menu-QuanLyTaiKhoan-navigation-wrapper"></div>
                                        <p>
                                            Xin chào <strong>
                                                <asp:Label ID="lbTen" runat="server" Text=""></asp:Label></strong> (không phải bạn <strong></strong>? Hãy <a href="#" style="color: blue;">thoát ra</a> và đăng nhập vào tài khoản của bạn)
                                        </p>

                                        <p>Từ trang quản lý tài khoản bạn có thể xem <a href="QLyDonHang.aspx" style="color: blue">đơn hàng mới</a>, quản lý <a href="QLyDiaChi.aspx">địa chỉ giao hàng và thanh toán</a>, and <a href="https://xxivstore.com/my-account/edit-account/">sửa mật khẩu và thông tin tài khoản</a>.</p>
                                    </div>
                                    <%-- Don hang --%>
                                    <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                                        <div class="menu-QuanLyTaiKhoan-navigation-wrapper"></div>
                                        <div class="menu-QuanLyTaiKhoan-message">
                                            <a class="menu-QuanLyTaiKhoan-Button" href="DanhSach.aspx">Tìm các sản phẩm</a>
                                            Bạn chưa có đơn hàng nào.	
                                        </div>
                                    </div>
                                    <%-- Dia chi --%>
                                    <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                                        <div class="first-column-TaiKhoan">
                                            <div>
                                                <div class="menu-QuanLyTaiKhoan">
                                                    

                                                    <div class="menu-QuanLyTaiKhoan-content">
                                                        <div class="menu-QuanLyTaiKhoan-navigation-wrapper">
                                                            <p>Các địa chỉ bên dưới mặc định sẽ được sử dụng ở trang thanh toán sản phẩm.</p>
                                                            <div class="menu-QuanLyTaiKhoan-Addresses ">
                                                                <div class="menu-QuanLyTaiKhoan-Address-1">
                                                                    <header class="menu-QuanLyTaiKhoan-Address-title title">
                                                                        <h3>Địa chỉ giao hàng mặc định</h3>
                                                                        <a href="" class="edit">Thêm</a>
                                                                    </header>
                                                                    <p>Bạn vẫn chưa thêm địa chỉ nào.</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <%-- Tai khoan --%>
                                    <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">
                                        <div class="menu-QuanLyTaiKhoan-navigation-wrapper"></div>
                                        <form class="EditAccountForm edit-account">


                                            
                                            

                                            <p class="AccountForm-form-row AccountForm-form-row--wide form-row form-row-wide">
                                                <label for="account_display_name">Tên hiển thị&nbsp;<span class="required">*</span></label>
                                                <asp:TextBox ID="tbFullName" CssClass="AccountForm-Input AccountForm-Input--text input-text" runat="server"></asp:TextBox>
                                                <%--<input type="text" class="AccountForm-Input AccountForm-Input--text input-text" name="account_display_name" id="account_display_name" value="">--%>
                                                <span><em>Tên này sẽ hiển thị trong trang Tài khoản và phần Đánh giá sản phẩm</em></span>
                                            </p>
                                            <div class="clear"></div>

                                            <%--<p class="AccountForm-form-row AccountForm-form-row--wide form-row form-row-wide">
                                                <label for="account_email">Địa chỉ email&nbsp;<span class="required">*</span></label>
                                                <input type="email" class="AccountForm-Input AccountForm-Input--email input-text" name="account_email" id="account_email" autocomplete="email" value="">
                                                <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
                                            </p>--%>

                                            <fieldset style="border: 1px solid; padding:10px;">
                                                <legend>Thay đổi mật khẩu</legend>

                                                <p class="AccountForm-form-row AccountForm-form-row--wide form-row form-row-wide">
                                                    <label for="password_current">Mật khẩu hiện tại (bỏ trống nếu không đổi)</label>
                                                    <span class="password-input">
                                                        <%--<input type="password" class="AccountForm-Input AccountForm-Input--password input-text" name="password_current" id="password_current" autocomplete="off">--%><span class="show-password-input"></span></span>
                                                        <asp:TextBox ID="tbPassCurrent" CssClass="AccountForm-Input AccountForm-Input--password input-text" runat="server"></asp:TextBox>
                                                </p>
                                                <p class="AccountForm-form-row AccountForm-form-row--wide form-row form-row-wide">
                                                    <label for="password_1">Mật khẩu mới (bỏ trống nếu không đổi)</label>
                                                    <span class="password-input">
                                                        <%--<input type="password" class="AccountForm-Input AccountForm-Input--password input-text" name="password_1" id="password_1" autocomplete="off">--%><span class="show-password-input"></span></span>
                                                    <asp:TextBox ID="tbNewPass" CssClass="AccountForm-Input AccountForm-Input--password input-text" runat="server"></asp:TextBox>
                                                </p>
                                                <p class="AccountForm-form-row AccountForm-form-row--wide form-row form-row-wide">
                                                    <label for="password_2">Xác nhận mật khẩu mới</label>
                                                    <span class="password-input">
                                                        <%--<input type="password" class="AccountForm-Input AccountForm-Input--password input-text" name="password_2" id="password_2" autocomplete="off">--%><span class="show-password-input"></span></span>
                                                        <asp:TextBox ID="tbRePass" CssClass="AccountForm-Input AccountForm-Input--password input-text" runat="server"></asp:TextBox>
                                                </p>
                                            </fieldset>
                                            <div class="clear"></div>
                                            <p>
                                                <input type="hidden" id="save-account-details-nonce" name="save-account-details-nonce" value="8a5c9c78df"><input type="hidden" name="_wp_http_referer" value="/my-account/edit-account/">
                                                <%--<button type="submit" class="AccountForm-Button button" name="save_account_details" value="Lưu thay đổi">Lưu thay đổi</button>--%>
                                                <asp:Button ID="bSave" CssClass="AccountForm-Button button" runat="server" Text="Lưu thay đổi" />
                                                <input type="hidden" name="action" value="save_account_details">
                                            </p>
                                        </form>
                                    </div>
                                    </div>
                                </div>
                            </div>
                            </div>
                            </div>
                        </div>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    </div>
</asp:Content>
