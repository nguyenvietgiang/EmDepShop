﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TatcaSP.aspx.cs" Inherits="EmDepSite.TatcaSP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tất Cả SP</title>
    <link href="../css/index.css" rel="stylesheet" />
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
                            <form onsubmit="return checksearchForm();" id="searchForm" name="searchForm" method="post" action="">
                                <asp:TextBox runat="server" class="key" placeholder="Từ khóa tìm kiếm" name="pr_name" id="keysearch"></asp:TextBox>
                                <asp:Button ID="Button1" runat="server" value="Tìm kiếm" class="submit" OnClick="Button1_Click" />
                            </form>
                        </div>           
                    </div>  
                </div>
            </div>
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
                        <a href="https://portal.vietcombank.com.vn/">
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
                            </a>
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
            <div id="trangphai" class="auto-style1">
                <div id="slideshow">
                    <!-- #region Jssor Slider Begin -->
                    <!-- Generator: Jssor Slider Maker -->
                    <!-- Source: http://www.jssor.com/demos/full-width-slider.slider -->
                    <!-- This demo works without jquery library. -->

                    <script type="text/javascript" src="../js/full-width-slider.slider/js/jssor.slider-21.1.5.min.js"></script>
                    <!-- use jssor.slider-21.1.5.debug.js instead for debug -->
                    <script>
                        jssor_1_slider_init = function () {

                            var jssor_1_SlideoTransitions = [
                              [{ b: 5500, d: 3000, o: -1, r: 240, e: { r: 2 } }],
                              [{ b: -1, d: 1, o: -1, c: { x: 51.0, t: -51.0 } }, { b: 0, d: 1000, o: 1, c: { x: -51.0, t: 51.0 }, e: { o: 7, c: { x: 7, t: 7 } } }],
                              [{ b: -1, d: 1, o: -1, sX: 9, sY: 9 }, { b: 1000, d: 1000, o: 1, sX: -9, sY: -9, e: { sX: 2, sY: 2 } }],
                              [{ b: -1, d: 1, o: -1, r: -180, sX: 9, sY: 9 }, { b: 2000, d: 1000, o: 1, r: 180, sX: -9, sY: -9, e: { r: 2, sX: 2, sY: 2 } }],
                              [{ b: -1, d: 1, o: -1 }, { b: 3000, d: 2000, y: 180, o: 1, e: { y: 16 } }],
                              [{ b: -1, d: 1, o: -1, r: -150 }, { b: 7500, d: 1600, o: 1, r: 150, e: { r: 3 } }],
                              [{ b: 10000, d: 2000, x: -379, e: { x: 7 } }],
                              [{ b: 10000, d: 2000, x: -379, e: { x: 7 } }],
                              [{ b: -1, d: 1, o: -1, r: 288, sX: 9, sY: 9 }, { b: 9100, d: 900, x: -1400, y: -660, o: 1, r: -288, sX: -9, sY: -9, e: { r: 6 } }, { b: 10000, d: 1600, x: -200, o: -1, e: { x: 16 } }]
                            ];

                            var jssor_1_options = {
                                $AutoPlay: true,
                                $SlideDuration: 800,
                                $SlideEasing: $Jease$.$OutQuint,
                                $CaptionSliderOptions: {
                                    $Class: $JssorCaptionSlideo$,
                                    $Transitions: jssor_1_SlideoTransitions
                                },
                                $ArrowNavigatorOptions: {
                                    $Class: $JssorArrowNavigator$
                                },
                                $BulletNavigatorOptions: {
                                    $Class: $JssorBulletNavigator$
                                }
                            };

                            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

                            //responsive code begin
                            //you can remove responsive code if you don't want the slider scales while window resizing
                            function ScaleSlider() {
                                var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                                if (refSize) {
                                    refSize = Math.min(refSize, 1920);
                                    jssor_1_slider.$ScaleWidth(refSize);
                                }
                                else {
                                    window.setTimeout(ScaleSlider, 30);
                                }
                            }
                            ScaleSlider();
                            $Jssor$.$AddEvent(window, "load", ScaleSlider);
                            $Jssor$.$AddEvent(window, "resize", ScaleSlider);
                            $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
                            //responsive code end
                        };
                    </script>

                    <style>
                                        /* jssor slider bullet navigator skin 05 css */
                                        /*
                        .jssorb05 div           (normal)
                        .jssorb05 div:hover     (normal mouseover)
                        .jssorb05 .av           (active)
                        .jssorb05 .av:hover     (active mouseover)
                        .jssorb05 .dn           (mousedown)
                        */
                                        .jssorb05 {
                                            position: absolute;
                                        }

                                            .jssorb05 div, .jssorb05 div:hover, .jssorb05 .av {
                                                position: absolute;
                                                /* size of bullet elment */
                                                width: 16px;
                                                height: 16px;
                                                background: url('../js/full-width-slider.slider/img/b05.png') no-repeat;
                                                overflow: hidden;
                                                cursor: pointer;
                                            }

                                            .jssorb05 div {
                                                background-position: -7px -7px;
                                            }

                                                .jssorb05 div:hover, .jssorb05 .av:hover {
                                                    background-position: -37px -7px;
                                                }

                                            .jssorb05 .av {
                                                background-position: -67px -7px;
                                            }

                                            .jssorb05 .dn, .jssorb05 .dn:hover {
                                                background-position: -97px -7px;
                                            }

                                        /* jssor slider arrow navigator skin 22 css */
                                        /*
                        .jssora22l                  (normal)
                        .jssora22r                  (normal)
                        .jssora22l:hover            (normal mouseover)
                        .jssora22r:hover            (normal mouseover)
                        .jssora22l.jssora22ldn      (mousedown)
                        .jssora22r.jssora22rdn      (mousedown)
                        */
                        .jssora22l, .jssora22r {
                            display: block;
                            position: absolute;
                            /* size of arrow element */
                            width: 40px;
                            height: 58px;
                            cursor: pointer;
                            background: url('../js/full-width-slider.slider/img/a22.png') center center no-repeat;
                            overflow: hidden;
                        }

                                        .jssora22l {
                                            background-position: -10px -31px;
                                        }

                                        .jssora22r {
                                            background-position: -70px -31px;
                                        }

                                        .jssora22l:hover {
                                            background-position: -130px -31px;
                                        }

                                        .jssora22r:hover {
                                            background-position: -190px -31px;
                                        }

                                        .jssora22l.jssora22ldn {
                                            background-position: -250px -31px;
                                        }

                                        .jssora22r.jssora22rdn {
                                            background-position: -310px -31px;
                                        }
                        .auto-style1 {
                            width: 724px;
                        }
                    </style>


                    <div id="jssor_1" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 1300px; height: 500px; overflow: hidden; visibility: hidden;">
                        <!-- Loading Screen -->
                        <div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
                            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                            <div style="position: absolute; display: block; background: url('js/full-width-slider.slider/img/loading.gif') no-repeat center center; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                        </div>
                        <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 1300px; height: 500px; overflow: hidden;">
                            
                            <div data-p="225.00" style="display: none;">                      
                                <img data-u="image" src="../js/full-width-slider.slider/img/slider/slide1.jpg" />
                            </div>
                            <div data-p="225.00" data-po="80% 55%" style="display: none;">                              
                                <img data-u="image" src="../js/full-width-slider.slider/img/slider/slide2.jpg" />
                            </div>
                            <div data-p="225.00" data-po="80% 55%" style="display: none;">
                                <img data-u="image" src="../js/full-width-slider.slider/img/slider/slide3.jpg" />
                            </div>
                            <!--<a data-u="add" href="http://www.jssor.com/demos/full-width-slider.slider" style="display:none">Full Width Slider</a>-->

                        </div>
                        <!-- Bullet Navigator -->
                        <div data-u="navigator" class="jssorb05" style="bottom:16px;right:16px;" data-autocenter="1">
                            <!-- bullet navigator item prototype -->
                            <div data-u="prototype" style="width:16px;height:16px;"></div>
                        </div>
                        <!-- Arrow Navigator -->
                        <span data-u="arrowleft" class="jssora22l" style="top:0px;left:12px;width:40px;height:58px;" data-autocenter="2"></span>
                        <span data-u="arrowright" class="jssora22r" style="top:0px;right:12px;width:40px;height:58px;" data-autocenter="2"></span>
                    </div>
                    <script>
                        jssor_1_slider_init();
                    </script>

                    <!-- #endregion Jssor Slider End -->
                </div>
                <div class="sanpham">
                    <div id="sanphamnoibat">
                        <div class="title-line">
                            <h3>Tất Cả Sản Phẩm: <asp:Label ID="Label1" runat="server" Text=""></asp:Label> </h3>
                        </div>
                        <div style="padding-left:3.5cm">
                        <asp:ListView ID="ListView1" runat="server" >
                            <ItemTemplate>
                                <div class="item">
                                          <a href="ChiTietSP.aspx?ma=<%# Eval("sMaSP") %> &ten=<%# Eval("sTenSP") %> &gia=<%# Eval("iGia") %>">                   
                                    <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("AnhSP") %>'></asp:Literal>                           
                                <a class="title-sp" href="#" title="yếm bò">
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("sTenSP") %>'></asp:Label>
                                </a>
                                <div class="desc">
                                    <p id="gia4">Giá: <%# Eval("iGia") %> Đồng</p>
                                </div>
                                         </a>
                            </div>     
                            </ItemTemplate>
                        </asp:ListView>
                            </div>
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
</body>
</html>
