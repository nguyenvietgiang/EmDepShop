<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TaiKhoan.aspx.cs" Inherits="EmDepSite.TaiKhoan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Tài Khoản</title>
    <link href="../css/dang-nhap.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 87px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style12 {
            width: 233px;
            height: 51px;
        }
        .auto-style13 {
            width: 287px;
            height: 51px;
        }
        .auto-style14 {
            width: 112px;
            height: 51px;
        }
        .auto-style17 {
            width: 299px;
            height: 51px;
        }
        .auto-style18 {
            width: 299px;
            height: 42px;
        }
        .auto-style19 {
            width: 233px;
            height: 42px;
        }
        .auto-style20 {
            width: 287px;
            height: 42px;
        }
        .auto-style21 {
            width: 112px;
            height: 42px;
        }
        .auto-style22 {
            height: 42px;
        }
        .auto-style23 {
            height: 51px
        }
        .auto-style24 {
            width: 299px;
            height: 50px;
        }
        .auto-style25 {
            width: 233px;
            height: 50px;
        }
        .auto-style26 {
            width: 287px;
            height: 50px;
        }
        .auto-style27 {
            width: 112px;
            height: 50px;
        }
        .auto-style28 {
            height: 50px
        }
        .auto-style29 {
            width: 238px;
            height: 50px;
        }
        .auto-style30 {
            width: 238px;
            height: 51px;
        }
        .auto-style31 {
            width: 238px;
            height: 42px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
         <div id="dongke"></div>
    <!--đầu trang-->
    <div id="dautrang">
        <div class="contener">
            <div id="logo">
                <div id="logochu">
                    <div id="anh1"></div>
                </div>
                <div id="logoanh">
                    <div id="anh2"></div>
                </div>
            </div>
        </div>
    </div>

    <!--menu đầu trang-->
    <div id="menudautrang">
        <div class="contener">
            <div id="menutrai">
                <ul class="menungang">
                       <li class="menu1"><a href="index.aspx">TRANG CHỦ</a></li>
                    <li class="menu1"><a href="GioiThieu.aspx">GIỚI THIỆU</a></li>
                    <li class="menu1"><a href="TatcaSP.aspx">SẢN PHẨM</a></li>
                    <li class="menu1"><a href="TinTuc.aspx">TIN TỨC</a></li>
                    <li class="menu1"><a href="GioHang.aspx">GIỎ HÀNG</a></li>
                </ul>
            </div>
            <div id="dangnhap">
                <ul>
                    <li class="auto-style1">/<a href="DangKy.aspx">Đăng ký</a></li>
                    <li class="dangnhap2"><a href="#">Đăng nhập</a></li>
                </ul>
            </div>
        </div>
    </div>

    <!--Đường dẫn tới danh mục-->
    <div class="inner">
        <div class="contener">
            <a href="#">Trang Chủ</a>
            <span class="icon"></span>
            <a href="#">Tài Khoản Của Tôi</a>
        </div>
    </div>
    <!--thân trang-->
    <div id="thantrang1">
        <div style="text-align:center;">
          <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thông Tin Tài Khoản Của Bạn</label>
        </div>

         <div>
             <asp:ListView ID="ListView1" runat="server">
                 <ItemTemplate>
             <table class="auto-style2">
                 <tr>
                      <td class="auto-style17"></td>
                     <td class="auto-style25">Tên Khách Hàng:</td>
                     <td class="auto-style26">
                         <asp:Label ID="Label1" runat="server" Text='<%# Eval("sTenKH") %>'></asp:Label>
                     </td>
                     <td class="auto-style27">Giới Tính:</td>
                     <td class="auto-style29">
                         <asp:Label ID="Label4" runat="server" Text='<%# Eval("sGioiTinh") %>'></asp:Label>
                     </td>
                     <td class="auto-style28"></td>
                 </tr>
                 <tr>
                     <td class="auto-style17"></td>
                     <td class="auto-style12">&nbsp;Số Điện Thoại:</td>
                     <td class="auto-style13">
                         <asp:Label ID="Label2" runat="server" Text='<%# Eval("sDoDT") %>'></asp:Label>
                     </td>
                     <td class="auto-style14">Địa Chỉ:</td>
                     <td class="auto-style30">
                         <asp:Label ID="Label5" runat="server" Text='<%# Eval("sDiaChi") %>'></asp:Label>
                     </td>
                     <td class="auto-style23"></td>
                 </tr>
                 <tr>
                     <td class="auto-style18"></td>
                     <td class="auto-style19">&nbsp;Số Tài Khoản:</td>
                     <td class="auto-style20">
                         <asp:Label ID="Label3" runat="server" Text='<%# Eval("sSoTK") %>'></asp:Label>
                     </td>
                     <td class="auto-style21"></td>
                     <td class="auto-style31"></td>
                     <td class="auto-style22"></td>
                 </tr>
             </table>
                     </ItemTemplate>
                 </asp:ListView>
             <tr>
                     <td class="auto-style16">&nbsp;</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <td class="auto-style4">
                         <asp:Button ID="Button1"  runat="server" Height="70px" Text="Sửa thông tin" Width="149px" OnClick="Button1_Click" BackColor="#FF0066" ForeColor="White" />
                     </td>
                     <td class="auto-style5"> &nbsp; &nbsp;
                         <asp:Button ID="Button2"  runat="server" Height="70px" Text="Đổi Mật Khẩu" Width="142px" OnClick="Button2_Click" BackColor="#FF0066" ForeColor="White" />
                     </td>
                      <td class="auto-style5">  &nbsp; &nbsp;
                         <asp:Button ID="Button3"  runat="server" Height="70px" Text="Đăng Xuất" Width="142px" OnClick="Button3_Click" BackColor="#FF0066" ForeColor="White" />
                     </td>
                     <td class="auto-style7">&nbsp;</td>
                     <td class="auto-style32">&nbsp;</td>
                     <td>&nbsp;</td>
          </tr>
         </div>
        </div>
    <!--chân trang-->
    <div id="footer">
        <div class="contener">
            <div class=" menufoter">
                <p>©2015 Copyright by EmDep.vn</p>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
