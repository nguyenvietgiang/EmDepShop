<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SGThieu.aspx.cs" Inherits="EmDepSite.SGThieu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>EmDep.vn</title>
    <link href="../css/index.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 469px;
        }
        .auto-style5 {
            width: 100%;
            height: 350px;
        }
        .auto-style8 {
            width: 406px;
        }
        .auto-style9 {
            width: 264px;
        }
        .auto-style10 {
            width: 197px;
        }
        .auto-style11 {
            width: 264px;
            height: 133px;
        }
        .auto-style12 {
            width: 197px;
            height: 133px;
        }
        .auto-style13 {
            width: 406px;
            height: 133px;
        }
        .auto-style14 {
            height: 133px;
        }
        .auto-style17 {
            width: 264px;
            height: 18px;
        }
        .auto-style18 {
            width: 197px;
            height: 18px;
        }
        .auto-style19 {
            width: 406px;
            height: 18px;
        }
        .auto-style20 {
            height: 18px;
        }
        .auto-style21 {
            width: 264px;
            height: 29px;
        }
        .auto-style22 {
            width: 197px;
            height: 29px;
        }
        .auto-style23 {
            width: 406px;
            height: 29px;
        }
        .auto-style24 {
            height: 29px;
        }
        .auto-style25 {
            width: 264px;
            height: 136px;
        }
        .auto-style26 {
            width: 197px;
            height: 136px;
        }
        .auto-style27 {
            width: 406px;
            height: 136px;
        }
        .auto-style28 {
            height: 136px;
        }
        .auto-style29 {
            width: 590px;
            height: 140px;
        }
        .auto-style30 {
            width: 522px;
        }
        .auto-style31 {
            margin-left: 7cm;
            cursor: pointer;
    background-color: #FF3366;
    border: none;
    color: white;
    display: block;
    padding: 10px;
    width: 100%;
    font-size: 16px;
    border-radius: 3px;
    outline: none;
        }
        .auto-style31:hover{
            background-color: red;
        }
        </style>
</head>
<body>
         <form id="form2" runat="server" enctype="multipart/form-data">
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
                    <li class="menu1"><a href="QuanTri.aspx">QL Sản Phẩm</a></li>
                    <li class="menu1"><a href="#">QL Tin Tức</a></li>
                    <li class="menu1"><a href="#">QLTài Khoản</a></li>
                    <li class="menu1"><a href="#">Chỉnh Sửa Giới Thiệu</a></li>
                    <li class="menu1"><a href="#">QLĐơn Hàng</a></li>
                </ul>
            </div>
            <div id="dangnhap">
                <ul>
                    <li class="dangnhap1">/<a href="#">Đăng ký</a></li>
                    <li class="dangnhap2"><a href="#">Đăng nhập</a></li>
                </ul>
            </div>
        </div>
    </div>
             <div></div>
             <div class="SGT">
             <div>
                 <table class="auto-style1">
                     <tr>
                         <td class="auto-style30">&nbsp;</td>
                         <td class="auto-style3">Chỉnh Sửa Chuyên Mục Giới Thiệu Trang WEB</td>
                         <td>&nbsp;</td>
                     </tr>
                 </table>
             </div>
             <div>

                 <table class="auto-style5">
                     <tr>
                         <td class="auto-style17"></td>
                         <td class="auto-style18">Địa Chỉ:</td>
                         <td class="auto-style19">
                             <asp:TextBox ID="TextBox1" runat="server" Width="424px"></asp:TextBox>
                         </td>
                         <td class="auto-style20"></td>
                     </tr>
                     <tr>
                         <td class="auto-style11"></td>
                         <td class="auto-style12">Nội Dung 1:</td>
                         <td class="auto-style13">
                             <textarea id="TextArea1" runat="server" class="auto-style29" name="S1"></textarea></td>
                         <td class="auto-style14"></td>
                     </tr>
                     <tr>
                         <td class="auto-style21"></td>
                         <td class="auto-style22">Ảnh Nội Dung 1:</td>
                         <td class="auto-style23">
                             <asp:FileUpload ID="FileUpload1" runat="server" Width="431px" />
                         </td>
                         <td class="auto-style24"></td>
                     </tr>
                     <tr>
                         <td class="auto-style25"></td>
                         <td class="auto-style26">Nội Dung 2:</td>
                         <td class="auto-style27">
                             <textarea id="TextArea2" runat="server" class="auto-style29" name="S2"></textarea></td>
                         <td class="auto-style28"></td>
                     </tr>
                     <tr>
                         <td class="auto-style9">&nbsp;</td>
                         <td class="auto-style10">Ảnh Nội Dung 2:</td>
                         <td class="auto-style8">
                             <asp:FileUpload ID="FileUpload2" runat="server" Width="431px" />
                         </td>
                         <td>&nbsp;</td>
                     </tr>
                 </table>
                 </div>
                 <div>                     
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Button ID="Button1"  class="auth_btn" runat="server" Text="Thay Đổi" OnClick="Button1_Click" CssClass="auto-style31" Height="46px" Width="239px" />                     
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                 </div>
             </div>
          </form>
    <div id="footer">
        <div class="contener">
            <div class=" menufoter">
                <p>©2015 Copyright by EmDep.vn</p>
            </div>
        </div>
    </div>
</body>
</html>
