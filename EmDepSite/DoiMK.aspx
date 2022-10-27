<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoiMK.aspx.cs" Inherits="EmDepSite.ChinhSachBM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Đổi Mật Khẩu</title>
    <link href="../css/dang-ky.css" rel="stylesheet" />
</head>
<body>
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
                    <li class="dangnhap1">/<a href="#">Đăng ký</a></li>
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
            <a href="#">Đăng ký</a>
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
            </div>
            <div id="trangphai">
                <div class="title-gioithieu">
                    <h1>ĐỔI MẬT KHẨU</h1>
                </div>
                <div class="userbox">
                    <form action="DoiMK.aspx" method="post" runat="server">
                <div class="auth__form1">
                    <div class="form-control">
                        <label for="password">Mật khẩu cũ</label>
                        <input type="password" id="oldpassword" placeholder="Nhập mật khẩu cũ" name="oldpassword"/>
                        <p></p>
                    </div>
                    <div class="form-control">
                        <label for="password">Mật khẩu mới</label>
                        <input type="password" id="password" placeholder="Nhập mật khẩu mới" name="password"/>
                        <p></p>
                    </div>
                    <div class="form-control">
                        <label for="re-password">Xác nhận mật khẩu mới</label>
                        <input type="password" id="re-password" placeholder="Nhập lại mật khẩu mới" name="re-password"/>
                        <p></p>
                    </div>
                    <p runat="server" id="btn_error" style="color:red"></p>
                     <p runat="server" id="P1" style="color:green"></p>
                    <asp:Button class="auth_btn" id="btnReg1" runat="server" Text="Thay Đổi" OnClick="btnReg1_Click" OnClientClick="return confirm('Ban chac chu ?');" />
                </div>
                </form>
                    
                </div>
            </div>
        </div>
    </div>
</body>    
</html>
  <script src="js\DoiMK.js"></script>