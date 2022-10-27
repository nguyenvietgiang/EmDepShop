<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SuaSP.aspx.cs" Inherits="EmDepSite.SuaSP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>EmDep.vn</title>
    <link href="../css/index.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            width: 412px;
        }
        .auto-style4 {
            height: 26px;
            width: 412px;
        }
        .auto-style6 {
            height: 26px;
            width: 189px;
        }
        .auto-style7 {
            width: 302px;
        }
        .auto-style8 {
            height: 26px;
            width: 302px;
        }
        .auto-style9 {
            margin-left: 0px;
        }
        .auto-style10 {
            width: 189px;
        }
        .auth_btn {
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
        .auto-style11 {
            width: 412px;
            height: 29px;
        }
        .auto-style12 {
            width: 189px;
            height: 29px;
        }
        .auto-style13 {
            width: 302px;
            height: 29px;
        }
        .auto-style14 {
            height: 29px;
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
        <div>
             <div id="menudautrang">
        <div class="contener">
            <div id="menutrai">
                <ul class="menungang">
                    <li class="menu1"><a href="QuanTri.aspx">QL Sản Phẩm</a></li>
                    <li class="menu1"><a href="QLTin.aspx">QL Tin Tức</a></li>
                    <li class="menu1"><a href="#">QLTài Khoản</a></li>
                    <li class="menu1"><a href="SGThieu.aspx">Chỉnh Sửa Giới Thiệu</a></li>
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
        </div>
        <div style="text-align:center"> Thay Đổi Thông Tin Sản Phẩm</div>
        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style10">Tên Sản Phẩm:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox1" runat="server" Width="212px" CssClass="auto-style9"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style6">Ảnh Sản Phẩm:</td>
                    <td class="auto-style8">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style10">Giá</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox2" runat="server" Width="212px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server"  Text="Quay Về" class="auth_btn"  Height="49px" Width="97px"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style12">Số Lượng:</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="TextBox3" runat="server" Width="212px"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:Button ID="Button2" runat="server" class="auth_btn"  Height="49px" Text="Thay Đổi" Width="97px" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style10">Kích Thước:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox4" runat="server" Width="212px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Button3" runat="server" Text="Xóa" class="auth_btn"  Height="49px" Width="97px" OnClick="Button3_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style12">Hãng:</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="TextBox5" runat="server" Width="212px"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:Label ID="Label20" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <div style="text-align:center">Thông Tin Ban Đầu</div>
        <div style="padding-left: 5cm">
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="70px" Width="990px" CellPadding="4" ForeColor="#333333" GridLines="None">
                 <AlternatingRowStyle BackColor="White" />
                 <Columns>
                     <asp:TemplateField HeaderText="Tên Sản Phẩm">
                         <ItemTemplate>
                             <asp:Label ID="Label3" runat="server" Text='<%# Eval("sTenSP") %>'></asp:Label>
                         </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" />
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Ảnh">
                         <ItemTemplate>
                           <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("AnhSP") %>'></asp:Literal>
                         </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" />
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Giá">
                         <ItemTemplate>
                                 <asp:Label ID="Label4" runat="server" Text='<%# Eval("iGia") %>'></asp:Label>
                         </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" />
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Hãng">
                         <ItemTemplate>
                                 <asp:Label ID="Label10" runat="server" Text='<%# Eval("sHang") %>'></asp:Label>
                         </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" />
                     </asp:TemplateField>
                      <asp:TemplateField HeaderText="Size">
                         <ItemTemplate>
                                 <asp:Label ID="Label19" runat="server" Text='<%# Eval("sKichThuoc") %>'></asp:Label>
                         </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" />
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Số Lượng">
                         <ItemTemplate>
                                 <asp:Label ID="Label10" runat="server" Text='<%# Eval("iSoLuong") %>'></asp:Label>
                         </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" />
                     </asp:TemplateField>
                 </Columns>
                 <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                 <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                 <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                 <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                 <SortedAscendingCellStyle BackColor="#FDF5AC" />
                 <SortedAscendingHeaderStyle BackColor="#4D0000" />
                 <SortedDescendingCellStyle BackColor="#FCF6C0" />
                 <SortedDescendingHeaderStyle BackColor="#820000" />
             </asp:GridView>
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
