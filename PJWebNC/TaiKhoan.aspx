<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="TaiKhoan.aspx.cs" Inherits="PJWebNC.TaiKhoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    <link rel="stylesheet" href="TaiKhoan.css" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
    <div class="section-TaiKhoan">
        <div class="container-TaiKhoan">
            <div class="grid-top-TaiKhoan" >
                <div class="uk-first-column">
                    <div>     
                        <h1 class="TaiKhoan-title">Tài khoản của tôi</h1>
                    </div>
                </div>
            </div>
        
            <div class="grid-bot-TaiKhoan" style="width:1200px" >
                <div class="first-column-TaiKhoan">
                    <div>
                        <div class="menu-QuanLyTaiKhoan">
                            <nav class="menu-QuanLyTaiKhoan-navigation">
                                <ul>
                                    <li class="menu-QuanLyTaiKhoan-navigation-link menu-QuanLyTaiKhoan-navigation-link--dashboard is-active">
                                        <a href="QLyTaiKhoan.aspx">Trang tài khoản</a>
                                    </li>
                                    <li class="menu-QuanLyTaiKhoan-navigation-link menu-QuanLyTaiKhoan-navigation-link--orders">
                                        <a href="QLyDonHang.aspx">Đơn hàng</a>
                                    </li>
                                    <li class="menu-QuanLyTaiKhoan-navigation-link menu-QuanLyTaiKhoan-navigation-link--edit-address">
                                        <a href="QlyDiaChi.aspx">Địa chỉ</a>
                                    </li>
                                    <li class="menu-QuanLyTaiKhoan-navigation-link menu-QuanLyTaiKhoan-navigation-link--edit-account">
                                        <a href="TaiKhoan.aspx">Đổi tên người dùng</a>
                                    </li>
                                    <li class="menu-QuanLyTaiKhoan-navigation-link menu-QuanLyTaiKhoan-navigation-link--edit-account">
                                        <a href="DoiMK.aspx">Đổi mật khẩu</a>
                                    </li>
                                    <li class="menu-QuanLyTaiKhoan-navigation-link menu-QuanLyTaiKhoan-navigation-link--customer-logout">
                                        <a href="SignOut.aspx">Thoát</a>
                                    </li>
                                </ul>
                            </nav>

                            <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">
                                <div class="menu-QuanLyTaiKhoan-navigation-wrapper"></div>
                                <form class="EditAccountForm edit-account">





                                    <p class="AccountForm-form-row AccountForm-form-row--wide form-row form-row-wide">
                                        <label for="account_display_name">Tên hiển thị&nbsp;<span class="required">*</span></label>
                                        <asp:TextBox ID="tbFullName" CssClass="AccountForm-Input AccountForm-Input--text input-text" runat="server"></asp:TextBox>
                                        <span><em>Tên này sẽ hiển thị trong trang Tài khoản và phần Đánh giá sản phẩm</em></span>
                                    </p>
                                    <div class="clear"></div>

                                    

                                    
                                    <p>
                                        <input type="hidden" id="save-account-details-nonce" name="save-account-details-nonce" value="8a5c9c78df"><input type="hidden" name="_wp_http_referer" value="/my-account/edit-account/">
                                        <asp:Button ID="bLuu" runat="server" CssClass="AccountForm-Button button" Text="Save" OnClick="bLuu_Click"/>

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
</asp:Content>
