<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GioiThieu.aspx.cs" Inherits="EmDepSite.GioiThieu" %>

<!DOCTYPE html>
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Giới thiệu</title>
    <link href="../css/gioi-thieu.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 189px;
            width: 708px;
        }
        .auto-style2 {
            height: 1339px;
            width: 710px;
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
            <a href="#">Giới thiệu</a>
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
            <div id="trangphai" class="auto-style2">                
                <div class="title-gioithieu">
                    <h1>Em Đẹp Mang Lại Chất Lượng Và Trải Nghiệm Tuyệt Vời</h1>
                </div>
                <div class="auto-style1">
                    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                             <br />
                <table class="auto-style5">
                    <tr>
                        <label style="padding-left:0.3cm">Thân Gửi Các Khách Hàng Của Em Đẹp Shop</label>
                        <td>
                            
                        </td>
                    </tr>
                     <tr>
                        <td style="padding-left:6.5cm">
                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("AnhGT") %>'></asp:Literal>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-left:0.3cm">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("sLGT1") %>'></asp:Label>
                        </td>
                    </tr>
                     <tr>
                        <td style="padding-left:5.5cm">
                            <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("AnhGT2") %>'></asp:Literal>
                        </td>
                    </tr>
                    <tr>
                        <td  style="padding-left:0.3cm">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("sLGT2") %>'></asp:Label>
                        </td>
                    </tr>
                     <tr>
                        <td style="padding-left:0.3cm">
                        Đến với Chúng Tôi Tại: <asp:Label ID="Label3" runat="server" Text='<%# Eval("sDiaChi") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />
                        </ItemTemplate>
                    </asp:ListView>
                    <div style="padding-left:2cm">
                     <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3719.6628992245114!2d105.99470158437803!3d21.205546283401535!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31350f0c943b56b9%3A0x278f6a3b3f46643f!2zU2hvcCBFbSDEkOG6uXA!5e0!3m2!1svi!2s!4v1664810544914!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                   </div>
                    </div>
            </div>
        </div>
    </div>
        <div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLNVConnectionString %>" SelectCommand="SELECT * FROM GioiThieu"></asp:SqlDataSource>
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
