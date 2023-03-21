﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="TaiKhoan.aspx.cs" Inherits="PJWebNC.TaiKhoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    <link rel="stylesheet" href="TaiKhoan.css" />
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
                                        <a href="TaiKhoan.aspx">Tài khoản</a>
                                    </li>
                                    <li class="menu-QuanLyTaiKhoan-navigation-link menu-QuanLyTaiKhoan-navigation-link--customer-logout">
                                        <a href="SignOut.aspx">Thoát</a>
                                    </li>
                                </ul>
                            </nav>

                            <div class="menu-QuanLyTaiKhoan-content">
                                <div class="menu-QuanLyTaiKhoan-navigation-wrapper"></div>
                                <form class="EditAccountForm edit-account">

	
                                    <p class="AccountForm-form-row AccountForm-form-row--first form-row form-row-first">
                                        <label for="account_first_name">Tên&nbsp;<span class="required">*</span></label>
                                        <input type="text" class="AccountForm-Input AccountForm-Input--text input-text" name="account_first_name" id="account_first_name" autocomplete="given-name" value="">
                                    </p>
                                    <p class="AccountForm-form-row AccountForm-form-row--last form-row form-row-last">
                                        <label for="account_last_name">Họ&nbsp;<span class="required">*</span></label>
                                        <input type="text" class="AccountForm-Input AccountForm-Input--text input-text" name="account_last_name" id="account_last_name" autocomplete="family-name" value="">
                                    </p>
                                    <div class="clear"></div>
                                
                                    <p class="AccountForm-form-row AccountForm-form-row--wide form-row form-row-wide">
                                        <label for="account_display_name">Tên hiển thị&nbsp;<span class="required">*</span></label>
                                        <input type="text" class="AccountForm-Input AccountForm-Input--text input-text" name="account_display_name" id="account_display_name" value=""> 
                                        <span><em>Tên này sẽ hiển thị trong trang Tài khoản và phần Đánh giá sản phẩm</em></span>
                                    </p>
                                    <div class="clear"></div>
                                
                                    <p class="AccountForm-form-row AccountForm-form-row--wide form-row form-row-wide">
                                        <label for="account_email">Địa chỉ email&nbsp;<span class="required">*</span></label>
                                        <input type="email" class="AccountForm-Input AccountForm-Input--email input-text" name="account_email" id="account_email" autocomplete="email" value="">
                                    </p>
                                
                                    <fieldset>
                                        <legend>Thay đổi mật khẩu</legend>
                                
                                        <p class="AccountForm-form-row AccountForm-form-row--wide form-row form-row-wide">
                                            <label for="password_current">Mật khẩu hiện tại (bỏ trống nếu không đổi)</label>
                                            <span class="password-input"><input type="password" class="AccountForm-Input AccountForm-Input--password input-text" name="password_current" id="password_current" autocomplete="off"><span class="show-password-input"></span></span>
                                        </p>
                                        <p class="AccountForm-form-row AccountForm-form-row--wide form-row form-row-wide">
                                            <label for="password_1">Mật khẩu mới (bỏ trống nếu không đổi)</label>
                                            <span class="password-input"><input type="password" class="AccountForm-Input AccountForm-Input--password input-text" name="password_1" id="password_1" autocomplete="off"><span class="show-password-input"></span></span>
                                        </p>
                                        <p class="AccountForm-form-row AccountForm-form-row--wide form-row form-row-wide">
                                            <label for="password_2">Xác nhận mật khẩu mới</label>
                                            <span class="password-input"><input type="password" class="AccountForm-Input AccountForm-Input--password input-text" name="password_2" id="password_2" autocomplete="off"><span class="show-password-input"></span></span>
                                        </p>
                                    </fieldset>
                                    <div class="clear"></div>
                                    <p>
                                        <input type="hidden" id="save-account-details-nonce" name="save-account-details-nonce" value="8a5c9c78df"><input type="hidden" name="_wp_http_referer" value="/my-account/edit-account/">		<button type="submit" class="AccountForm-Button button" name="save_account_details" value="Lưu thay đổi">Lưu thay đổi</button>
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
