<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testgrid.aspx.cs" Inherits="PJWebNC.testgrid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="GioHang.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server">
                <div class="product-grid ">
                        <div class="imgPD">
                            <img src="<%# Eval("Anh") %>" alt="">
                        </div>
                        <div class="tenPD d-flex justify-content-center align-items-lg-center">
                            <h2> <%--<asp:Label ID="lbIDSanPham" runat="server"  Text='<%#Eval("IDSanPham") %>' ForeColor="White"></asp:Label>--%>
                                <%#Eval("TenSP") %> </h2>
                                
                            <h2><%#Eval("GiaBan", "{0:N0}") %></h2>
                        </div>
                        <div class="inputPD" style="display: flex; justify-content: center; align-items: center; flex-direction: column;">
                            <asp:TextBox ID="tbSoLuong" runat="server" Width="100" Text='<%#Eval("SoLuong") %>'></asp:TextBox>
                            <asp:Button ID="bXoa" runat="server" Text="Xóa sản phẩm" Width="120" Height="30" CommandName="Select" />
                        </div>
                    </div>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
