<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QLTin.aspx.cs" Inherits="EmDepSite.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 469px;
        }
        .auto-style5 {
            width: 100%;
            height: 326px;
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
            height: 177px;
        }
        .auto-style12 {
            width: 197px;
            height: 177px;
        }
        .auto-style13 {
            width: 406px;
            height: 177px;
        }
        .auto-style14 {
            height: 177px;
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
            height: 52px;
        }
        .auto-style22 {
            width: 197px;
            height: 52px;
        }
        .auto-style23 {
            width: 406px;
            height: 52px;
        }
        .auto-style24 {
            height: 52px;
        }
        .auto-style29 {
            width: 590px;
            height: 160px;
              margin-bottom: 11px;
          }
        .auto-style30 {
            width: 522px;
        }
        .auto-style31:hover{
            background-color: red;
        }
          .auto-style31 {
              width: 371px;
              height: 24px;
          }
          .auto-style32 {
              height: 24px;
          }
          .auto-style33 {
              width: 100%;
              margin-bottom: 14px;
          }
          .auto-style38 {
              width: 245px;
              height: 24px;
          }
          .auto-style39 {
              width: 273px;
              height: 24px;
          }
          .auto-style40 {
              width: 264px;
              height: 35px;
          }
          .auto-style41 {
              width: 197px;
              height: 35px;
          }
          .auto-style42 {
              width: 406px;
              height: 35px;
          }
          .auto-style43 {
              height: 35px;
          }
          .auto-style45 {
              width: 788px;
          }
        </style>
     <title>EmDep.vn</title>
    <link href="../css/index.css" rel="stylesheet" />
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
                         <td class="auto-style3">qUẢN lÝ TIN TỨC - BÀI VIẾT</td>
                         <td>&nbsp;</td>
                     </tr>
                 </table>
             </div>
             <div>

                 <table class="auto-style5">
                     <tr>
                         <td class="auto-style17"></td>
                         <td class="auto-style18">Tiêu đề:</td>
                         <td class="auto-style19">
                             <asp:TextBox ID="TextBox1" runat="server" Width="424px"></asp:TextBox>
                         </td>
                         <td class="auto-style20"></td>
                     </tr>
                     <tr>
                         <td class="auto-style11"></td>
                         <td class="auto-style12">Nội Dung tin tức:</td>
                         <td class="auto-style13">
                             <textarea id="TextArea1" runat="server" class="auto-style29" name="S1"></textarea></td>
                         <td class="auto-style14"></td>
                     </tr>
                     <tr>
                         <td class="auto-style21"></td>
                         <td class="auto-style22">Ảnh tin tức 1:</td>
                         <td class="auto-style23">
                             <asp:FileUpload ID="FileUpload1" runat="server" Width="431px" />
                         </td>
                         <td class="auto-style24"></td>
                     </tr>
                     <tr>
                         <td class="auto-style40"></td>
                         <td class="auto-style41">CHỦ ĐỀ:</td>
                         <td class="auto-style42">
                             <asp:DropDownList ID="DropDownList1" runat="server" Width="235px">
                                 <asp:ListItem Selected="True" Value="CNTT">Cẩm Nang Thời Trang.</asp:ListItem>
                                 <asp:ListItem Value="TKM">Tin Khuyến Mãi.</asp:ListItem>
                                 <asp:ListItem Value="PQA">Phối Quần Áo</asp:ListItem>
                                 <asp:ListItem Value="TTGT">Thời Trang - Giải Trí</asp:ListItem>
                             </asp:DropDownList>
                             </td>
                         <td class="auto-style43"></td>
                     </tr>
                     <tr>
                         <td class="auto-style9"></td>
                         <td class="auto-style10">&nbsp;</td>
                         <td class="auto-style8">
                             &nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                 </table>
                 </div>
                 <div>                     
                 
                     <table class="auto-style33">
                         <tr>
                             <td class="auto-style31"></td>
                             <td class="auto-style38">
                                 <asp:Button ID="Button1" runat="server" Text="Thêm" OnClick="Button1_Click" />
                             </td>
                             <td class="auto-style39">
                                 <asp:Button ID="Button4" runat="server" Text="Sửa" />
                             </td>
                             <td class="auto-style38">
                                 <asp:Button ID="Button3" runat="server" Text="Xóa" />
                             </td>
                             <td class="auto-style32"></td>
                         </tr>
                     </table>
                 </div>
                 <div>

                     <table class="auto-style1">
                         <tr>
                             <td class="auto-style9">&nbsp;</td>
                             <td class="auto-style45">
                                 <asp:GridView ID="GridView1" AutoGenerateColumns="False" runat="server" Width="789px" DataSourceID="SqlDataSource1">
                                      <Columns>
                                           <asp:TemplateField HeaderText="Mã">
                         <ItemTemplate>
                             <asp:Label ID="Label13" runat="server" Text='<%# Eval("iMTT") %>'></asp:Label>
                         </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" />
                     </asp:TemplateField>
                                           <asp:TemplateField HeaderText="Tin Chính">
                         <ItemTemplate>
                              <a class="title1" href="ChiTietBV.aspx?ma=<%# Eval("sTieuDe") %>"><%# Eval("sTieuDe")%></a>
                         </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" />
                     </asp:TemplateField>
                                           <asp:TemplateField HeaderText="Chủ Đề">
                         <ItemTemplate>
                               <asp:Label ID="Label13" runat="server" Text='<%# Eval("sChuDe") %>'></asp:Label>
                         </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

                                      </Columns>
                                 </asp:GridView>
                             </td>
                             <td>&nbsp;</td>
                         </tr>
                     </table>
                 </div>
                 <div>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLNVConnectionString %>" SelectCommand="SELECT * FROM TinTuc"></asp:SqlDataSource>
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
