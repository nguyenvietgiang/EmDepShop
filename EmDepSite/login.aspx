<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="EmDepSite.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng nhập</title>
    <link href="../css/dang-nhap.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            padding: 15px 40px 30px;
            height: 336px;
        }
        .auto-style2 {
            display: block;
            background-color: white;
            border-radius: 4px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
            width: 437px;
            max-width: 100%;
            overflow: hidden;
            height: 507px;
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
            <a href="#">Đăng Nhập</a>
        </div>
    </div>
    <!--thân trang-->
    <div id="thantrang">
         <div class="content">

            <div id="login-form" class="auto-style2" >
                <div class="auto-style1">
                    <label style="color: #ea819e; font-size: 18px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Đăng Nhập Để Tiếp Tục</label><div></div>
                    <div class="form-control">                       
                        <input type="text" id="usernameL" placeholder="Nhập tên đăng nhập" name="usernameL" />
                    </div>
                    <div class="form-control">                    
                        <input type="password" id="passwordL" placeholder="Nhập mật khẩu" name="passwordL" />
                    </div>
                     <p runat="server" id="errorL" style=" color:red"></p>
					<asp:Button ID="Button2" class="auth_btn" runat="server" Text="Đăng Nhập" OnClick="Button1_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="#">Quên Mật Khẩu?</a>
                    <div>
                        <label style="color: #ea819e; font-size: 18px; text-align:center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
                    </div>
                   <div>
                       <asp:ImageButton ID="ImageButton1" runat="server" Height="54px" ImageUrl="~/pic/dangnhap/sign-in-google.png" Width="356px" OnClick="ImageButton1_Click" />
                   </div>
                  <div></div>
                    <div id="fb-root">
                        <asp:Image ID="Image1" runat="server" Height="54px" Width="356px" ImageUrl="~/pic/dangnhap/FaceBook.png" onclick="loginByFacebook();" />
                   </div>
                    
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
       <script type="text/javascript">
           window.fbAsyncInit = function () {
               FB.init({
                   appId: '5546284648741227',
                   status: true, // check login status
                   cookie: true, // enable cookies to allow the server to access the session
                   xfbml: true, // parse XFBML
                   oauth: true // enable OAuth 2.0
               });
           };
           (function () {
               var e = document.createElement('script'); e.async = true;
               e.src = document.location.protocol +
                   '//connect.facebook.net/en_US/all.js';
               document.getElementById('fb-root').appendChild(e);
           }());

           function loginByFacebook() {
               FB.login(function (response) {
                   if (response.authResponse) {
                       FacebookLoggedIn(response);
                   } else {
                       console.log('User cancelled login or did not fully authorize.');
                   }
               }, { scope: 'user_birthday,user_about_me,user_hometown,user_location,email,publish_stream' });
           }

           function FacebookLoggedIn(response) {
               var loc = '/ChinhSachBM.aspx';
               if (loc.indexOf('?') > -1)
                   window.location = loc + '&authprv=facebook&access_token=' + response.authResponse.accessToken;
               else
                   window.location = loc + '?authprv=facebook&access_token=' + response.authResponse.accessToken;
           }
       </script>
</body>
</html>
