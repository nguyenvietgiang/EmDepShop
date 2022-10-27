<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuanTri.aspx.cs" Inherits="EmDepSite.QuanTri" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>EmDep.vn</title>
    <link href="../css/index.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 141%;
        }
        .auto-style2 {
            width: 373px;
        }
        .auto-style3 {
            width: 373px;
            height: 29px;
        }
        .auto-style4 {
            height: 29px;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            margin-right: 83px;
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

    .auth_btn:hover {
        background-color: red;
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
    <!--thanh tìm kiếm + giỏ hàng-->
    <div id="timkiem">
        <div class="contener">
            <div id="timkiem">
                <div class="timkiemtrai">
                        <div class="timkiemanh"></div>
                </div>
                <div class="timkiemphai">
                    <div class="giohang">
                        <div id="cart"></div>
                    </div>
                    <div class="hotline">
                        <div class="label">HOTLINE</div>
                        <div class="number">096.3290.731 - 090.2234.481</div>
                    </div>
                    <div class="otimkiem">
                        <div class="search">
                            </div>
                               <asp:TextBox runat="server" class="key" placeholder="Từ khóa tìm kiếm" name="pr_name" id="keysearch"></asp:TextBox>
                                <asp:Button ID="Button1" runat="server" value="Tìm kiếm" class="submit" OnClick="Button1_Click" />
                            <br />
         <table class="auto-style1">
             <tr>
                 <td class="auto-style2">&nbsp;&nbsp;&nbsp;</td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tên Sản Phẩm:</td>
                 <td>
                     <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ảnh Đại Diện:</td>
                 <td>
                     <asp:FileUpload ID="FileUpload1" runat="server" />
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Gía:</td>
                 <td>
                     <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kích Thước:&nbsp;&nbsp; </td>
                 <td>
                     <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Số Lượng:</td>
                 <td>
                     <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hãng:</td>
                 <td class="auto-style4">
                     <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                 </td>
             </tr>
         </table>
                        <div>

                            <asp:Button ID="Button2"  class="auth_btn" runat="server" Height="37px" OnClick="Button2_Click" Text="Thêm" Width="100px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#00CC00"></asp:Label>

                        </div>
                        <div>
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                        </div>
         <div>

             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="70px" Width="950px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="auto-style6" CellPadding="4" ForeColor="#333333" GridLines="None">
                 <AlternatingRowStyle BackColor="White" />
                 <Columns>
                      <asp:TemplateField HeaderText="Mã">
                         <ItemTemplate>
                             <asp:Label ID="Label13" runat="server" Text='<%# Eval("sMaSP") %>'></asp:Label>
                         </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" />
                     </asp:TemplateField>
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
                             <div class="auto-style5">
                                 <asp:Label ID="Label4" runat="server" Text='<%# Eval("iGia") %>'></asp:Label>
                             </div>
                         </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" />
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Hãng">
                         <ItemTemplate>
                             <div class="auto-style5">
                                 <asp:Label ID="Label10" runat="server" Text='<%# Eval("sHang") %>'></asp:Label>
                             </div>
                         </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" />
                     </asp:TemplateField>
                      <asp:TemplateField HeaderText="Size">
                         <ItemTemplate>
                             <div class="auto-style5">
                                 <asp:Label ID="Label19" runat="server" Text='<%# Eval("sKichThuoc") %>'></asp:Label>
                             </div>
                         </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" />
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Số Lượng">
                         <ItemTemplate>
                             <div class="auto-style5">
                                 <asp:Label ID="Label10" runat="server" Text='<%# Eval("iSoLuong") %>'></asp:Label>
                             </div>
                         </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" />
                     </asp:TemplateField>
                      <asp:TemplateField HeaderText="Tác Vụ">
                         <ItemTemplate>
                             <div class="auto-style5">
                              <a href="SuaSP.aspx?ma=<%# Eval("sMaSP") %>">Tác Vụ</a>
                             </div>
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
                        <div>

                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLNVConnectionString %>" SelectCommand="SELECT [AnhSP], [sTenSP], [iGia] FROM [SanPham]"></asp:SqlDataSource>

                        </div>
    </form>

   
    <div id="footer">
        <div class="contener">
            <div class=" menufoter">
                <p>©2015 Copyright by EmDep.vn</p>
            </div>
        </div>
    </div>
&nbsp;
</body>
</html>
