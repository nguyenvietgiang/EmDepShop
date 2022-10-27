<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChiTietBV.aspx.cs" Inherits="EmDepSite.ChiTietBV" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tin Tức</title>
    <link href="../css/gioi-thieu.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 189px;
            width: 708px;
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
                    <li class="menu1"><a href="#">SẢN PHẨM</a></li>
                    <li class="menu1"><a href="TinTuc.aspx">TIN TỨC</a></li>
                    <li class="menu1"><a href="#">THANH TOÁN</a></li>
                </ul>
            </div>
            <div id="dangnhap">
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
            <a href="index.aspx">Trang chủ</a>
            <span class="icon"></span>
            <a href="TinTuc.aspx">Tin Tức</a>
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
                            <li><a href="#" title="ÁO">ÁO</a></li>
                            <li><a href="#" title="ĐẦM">ĐẦM</a></li>
                            <li><a href="#" title="QUẦN">QUẦN</a></li>
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
                <div class="title-gioithieu">
                    <h1>Thông Tin Hữu Ích Từ EM Đẹp</h1>
                </div>
                <div class="auto-style1">
                    <asp:ListView ID="ListView1" runat="server">
                        <ItemTemplate>
                             <br />
                <table class="auto-style5">
                    <tr>
                        <td style="text-align:center;">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("sTieuDe") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:center;">
                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("AnhMH") %>'></asp:Literal>
                        </td>
                    </tr>
                    <tr>
                        <td  style="padding-left:0.3cm">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("sNoiDung") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />
                        </ItemTemplate>
                    </asp:ListView>
                     <div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v15.0&appId=5546284648741227&autoLogAppEvents=1" nonce="OsMhBi1T"></script>
                 <div style="padding-left:2cm" class="fb-comments" data-href="http://www.aspmantra.com" data-width="" data-numposts="5"></div>
                </div>
                 <div class="cb"></div>       
                </div>
            <div id="SubNewOtherItem">
                        <div class="head">TIN TỨC KHÁC:</div>
                        <a href="#" class="title" title="Thiết kế nhà ở sang trọng bên bờ biển">
                           Thiết kế nhà ở sang trọng bên bờ biển 
                           <span>(23 Lượt xem)</span>
                        </a> 
                        <a href="#" class="title" title="Thiết kế nhà ở sang trọng bên bờ biển">
                            Thiết kế nhà ở sang trọng bên bờ biển
                            <span>(23 Lượt xem)</span>
                        </a>
                        <a href="#" class="title" title="Thiết kế nhà ở sang trọng bên bờ biển">
                            Thiết kế nhà ở sang trọng bên bờ biển
                            <span>(23 Lượt xem)</span>
                        </a>
                        <a href="#" class="title" title="Thiết kế nhà ở sang trọng bên bờ biển">
                            Thiết kế nhà ở sang trọng bên bờ biển
                            <span>(23 Lượt xem)</span>
                        </a>
                        <a href="#" class="title" title="Thiết kế nhà ở sang trọng bên bờ biển">
                            Thiết kế nhà ở sang trọng bên bờ biển
                            <span>(23 Lượt xem)</span>
                        </a>
                        <a href="#" class="title" title="Thiết kế nhà ở sang trọng bên bờ biển">
                            Thiết kế nhà ở sang trọng bên bờ biển
                            <span>(23 Lượt xem)</span>
                        </a>
                        <a href="#" class="title" title="Thiết kế nhà ở sang trọng bên bờ biển">
                            Thiết kế nhà ở sang trọng bên bờ biển
                            <span>(23 Lượt xem)</span>
                        </a>
                        <a href="#" class="title" title="Thiết kế nhà ở sang trọng bên bờ biển">
                            Thiết kế nhà ở sang trọng bên bờ biển
                            <span>(23 Lượt xem)</span>
                        </a>
                    </div>         
            </div>
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
