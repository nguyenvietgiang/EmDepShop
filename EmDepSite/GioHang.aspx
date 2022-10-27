<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="EmDepSite.GioHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Giỏ hàng</title>
    <link href="../css/gio-hang.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            font-size: 16px;
            height: 42px;
            width: 704px;
        }
        .auto-style2 {
            width: 31%; /* color: #3399cc; */;
            font-size: 14px;
            height: 42px;
        }
        .auto-style3 {
            width: 496px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
                    <li class="menu1"><a href="#">SẢN PHẨM</a></li>
                    <li class="menu1"><a href="TinTuc.aspx">TIN TỨC</a></li>
                    <li class="menu1"><a href="GioHang.aspx">GIỎ HÀNG</a></li>
                </ul>
            </div>
            <div id="dangnhap" runat="server">
                <ul>
                    <li class="dangnhap1">/<a href="DangKy.aspx">Đăng ký</a></li>
                    <li class="dangnhap2"><a href="login.aspx">Đăng nhập</a></li>
                </ul>
            </div>
        </div>
    </div>

    <!--Đường dẫn tới danh mục-->
    <div class="inner">
        <div class="contener">
            <a href="#">Trang chủ</a>
            <span class="icon"></span>
            <a href="#">Giỏ hàng</a>
        </div>
    </div>
    <!--thân trang-->
    <div id="thantrang">
        <div class="contener">
            <div id="trangtrai">
                <div id="danhmuc">
                    <div class="daumuc"><a>DANH MỤC SẢN PHẨM</a></div>
                    <div class="ditmuc">
                        <ul>
                           <li><a href="TatcaSP.aspx?hang=Nike" title="Nike">Nike</a></li>
                            <li><a href="TatcaSP.aspx?hang=Prada" title="Prada">Prada</a></li>
                            <li><a href="TatcaSP.aspx?hang=Docle" title="Docle">Docle</a></li>
                        </ul>
                    </div>
                </div>
                <div id="hotro">
                    <div id="pichotro">
                        <div class="logohotro">
                            <img src="../css/images/akmasa.png" title="pichtro" />
                        </div>
                        <h3>Hỗ trợ trực tuyến</h3>
                    </div>
                    <div class="support">
                        <div class="text-center">
                            <p>
                                <span class="supp-name">Hồng Anh</span>
                                <br />
                                <span class="phone">090.2234.481</span>
                            </p>
                            <a href="skype:?chat" class="skype">
                                <img src="../css/images/skype-icon.png" />
                            </a>
                            <a href="ymsgr:sendim?pinkypinky_vn" class="yahoo">
                                <img src="../css/images/yahoo-icon.png" />
                            </a>
                        </div>
                        <div class="text-center">
                            <p>
                                <span class="supp-name">Số hotline</span>
                                <br />
                                <span class="phone">096.3290.731</span>
                            </p>
                        </div>
                        <div class="text-center">
                            <p>
                                <span class="supp-name">Thời gian làm việc</span>
                                <br />
                                <span class="phone">24/24</span>
                            </p>
                        </div>
                    </div>
                </div>
                <div id="thanhtoan">
                    <div class="title-thanhtoan">
                        <a>THÔNG TIN GIAO DỊCH</a>
                    </div>
                    <div class="thongtinnganhang">
                        <div class="nganhang">
                            <img src="../css/images/nganhang/vietcombank.png" />
                            <p>
                                <strong>Ngân hàng Vietcombank</strong>
                                <br>
                                Số TK: 0011 0031 68537
                                <br>
                                Chủ TK: Hồng Anh
                                <br>
                                Chi nhánh Hội sở - Hà Nội
                            </p>
                        </div>
                        <div class="nganhang">
                            <img src="../css/images/nganhang/agribank.png" />
                            <p>
                                <strong>Ngân hàng Agribank</strong>
                                <br>
                                Số TK: 0011 0031 68537
                                <br>
                                Chủ TK: Hồng Anh
                                <br>
                                Chi nhánh Hội sở - Hà Nội
                            </p>
                        </div>
                        <div class="nganhang">
                            <img src="../css/images/nganhang/vietinbank.png" />
                            <p>
                                <strong>Ngân hàng Vietincombank</strong>
                                <br>
                                Số TK: 0011 0031 68537
                                <br>
                                Chủ TK: Hồng Anh
                                <br>
                                Chi nhánh Hội sở - Hà Nội
                            </p>
                        </div>
                    </div>
                </div>
                <div id="thongketruycap">
                    <div class="title-thongke">
                        <a>THỐNG KÊ TRUY CẬP</a>
                    </div>
                    <div class="so-thongke">
                        <p>Đang online: 100000</p>
                        <p>Lượt truy cập: 1000500</p>
                    </div>
                </div>
            </div>
            <div id="trangphai">
                <div class="modal-content">
                    <div class="modal-header">

                        <h4 class="modal-title" runat="server" id="exampleModalLabel"></h4>

                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <a aria-hidden="true"></a>
                        </button>

                    </div>
                    <form action="/cart" method="post" id="cartform" style="display: block;">
                        <div class="modal-body">
                            <table style="width:100%;" id="cart-table">
                                <tbody>
                                    <tr>
                                        <th></th>
                                        <th>Tên sản phẩm</th>
                                        <th>Giá tiền</th>
                                        <th>Tác Vụ</th>
                                        <th></th>
                                    </tr>
                                    <tr class="line-item original">
                                        <td class="item-image"></td>
                                        <td class="item-title">
                                            <a></a>
                                        </td>
                                        <td class="item-quantity"></td>
                                        <td class="item-price"></td>
                                        <td class="item-delete"></td>
                                    </tr>
                                    <asp:ListView ID="ListView1" runat="server" OnDataBound="ListView1_DataBound" OnPreRender="ListView1_PreRender">
                                            <ItemTemplate>
                                    <tr class="line-item">
                                        <td class="item-price"><%# Eval("sMaSP") %></td>
                                        <td class="item-title">
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("sTenSP") %>'></asp:Label>
                                        </td>
                                        <td class="item-price" id="lblUnitPrice"><%# Eval("iGia") %></td>
                                        <td class="item-delete"><a href="ChiTietGH.aspx?ma=<%# Eval("sMaSP") %>">Xem Chi Tiết</a></td>
                                            
                                    </tr>
                                                </ItemTemplate>
                                        </asp:ListView>  
                                </tbody>
                            </table>
                        </div>
                        <div class="modal-footer">
                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="modal-title-note">
                                        Ghi chú đơn hàng :
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="modal-note">
                                        <textarea placeholder="Viết ghi chú" id="note" name="note" rows="5" cols="50"></textarea>
                                    </div>
                                </div>
                                <div class="col-lg-5">
                                    <div class="total-price-modal">
                                        <asp:Label ID="Label1" runat="server" class="item-total" Text="Tổng Cộng"></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <div class="row" style="margin-top:10px;">
                                <div class="col-lg-6">
                                    <div class="comeback">
                                        <a href="index.aspx">
                                            <img src="../pic/dangnhap/icon-tieptuc.png" />  Tiếp tục mua hàng
                                        </a>
                                    </div>
                                </div>
                                <div class="col-lg-6 text-right">
                                    <div class="buttons btn-modal-cart">
                                        <button type="submit" class="button-default" id="checkout" name="checkout">
                                            Đặt hàng
                                        </button>
                                    </div>

                                    <div class="buttons btn-modal-cart">
                                        <button type="submit" class="button-default" id="update-cart-modal" name="">Cập nhật</button>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Nhập Mã Giảm Giá:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    &nbsp;
                    <asp:Button ID="Button1" runat="server" Height="50px" Text="Kích Hoạt" class="button-default" OnClick="Button1_Click" CssClass="button-default" ForeColor="White" />
                    <br />
                    <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Ưu Đãi:</td>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" ForeColor="Lime"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;Đã Giảm Từ:</td>
                <td class="auto-style3">
                   <strike> <asp:Label ID="Label5" runat="server" ForeColor="Red"></asp:Label> </strike>
&nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server" ForeColor="Lime"></asp:Label>
                </td>
            </tr>
        </table>

                    </form>
                </div>
            </div>
        </div>
    </div>

    <!--chân trang-->
    <div id="footer">
        <div class="contener">
            <div class=" menufoter">
                <p>©2015 Copyright by EmDep.vn            
            </div>
        </div>
    </div>
        </div>
    </form>
</body>
</html>
