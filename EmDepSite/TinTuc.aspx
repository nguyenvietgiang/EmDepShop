<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TinTuc.aspx.cs" Inherits="EmDepSite.TinTuc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tin tức</title>
    <link href="../css/tin-tuc.css" rel="stylesheet" />
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
            <a href="#">Tin tức</a>
        </div>
    </div>

    <!--thân trang-->
    <div id="thantrang">
        <div class="contener">
            <div id="trangtrai">
                <div id="danhmuc">
                    <div class="daumuc"><a>DANH MỤC TIN TỨC</a></div>
                    <div class="ditmuc">
                        <ul>
                            <li><a href="#TKM" title="Tin khuyến mại">Tin khuyến mại</a></li>
                            <li><a href="#TTGT" title="Tin thời trang">Thời trang - Giải trí</a></li>
                            <li><a href="#CNTT" title="Cẩm nang thời trang">Cẩm nang thời trang</a></li>
                        </ul>
                    </div>
                </div>
                <div class="tintucnoibat">
                    <div class="title-tin"><a>Có Thể Bạn Quan Tâm</a></div>
                    <div class="noidungtin">                       
                        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                            <ItemTemplate>
                            <div class="baosanphamindex">
                            <div class="khungAnh1">
                                <a class="khungAnhCrop" href="#">
                                    <img alt="Có Thể Bạn Quan Tâm" class="imgkhunganh" src="../pic/tin-tuc/News.jpg">
                                </a>
                            &nbsp;</div>
                                  <a class="title1" href="ChiTietBV.aspx?ma=<%# Eval("sTieuDe") %>"><%# Eval("sTieuDe")%></a>
                            <div class="cb"></div>
                        </div>
                                </ItemTemplate>
                        </asp:ListView>
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
                <div id="NewsIndex">
                    <div class="baonewinde">
                        <a class="titlehead" href="#" title="Tin trong nước">
                            <span class="ten" id="TKM">Tin Khuyến mại</span>
                        </a>
                        <div class="cb"></div>
                        <div class="list">
                            <div class="box1">
                                <div class="khungAnh">
                                    <a class="nentren" href="#"></a>
                                    <a class="khungAnhCrop" href="#">
                                        <img alt="Xả hàng giảm giá lớn nhân dip 2/9" class="imgmuctin" src="../pic/tin-tuc/thoitrang3.JPG">
                                    </a>
                                </div>
                                <a class="title" href="#" title="Xả hàng giảm giá lớn nhân dip 2/9">Xả hàng giảm giá lớn nhân dip 2/9</a>
                                <span class=""><span class="view">77</span><span class="date">11/07/2022</span></span>
                                <div class="desc">Nhân dịp quốc khánh 2/9 cửa hàng giản giá 50% áp dụng cho tất cảo các mặt hàng có giá thành nhỏ hơn 50k</div>
                                <a class="detail" href="#" title="Xả hàng giảm giá lớn nhân dip 2/9">Xem thêm</a>
                                <div class="cb"></div>
                             </div>
                                <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2">
                                    <ItemTemplate>
                                   <a class="title1" href="ChiTietBV.aspx?ma=<%# Eval("sTieuDe") %>"><%# Eval("sTieuDe")%></a>
                                    </ItemTemplate>
                                </asp:ListView>     
                        </div>
                    </div>
                    <div class="baonewinde">
                        <a class="titlehead" href="#" title="Thời trang - Giải trí">
                            <span class="ten" id="TTGT">Thời trang - Giải trí</span>
                        </a>
                        <div class="cb"></div>
                        <div class="list">
                            <div class="box1">
                                <div class="khungAnh">
                                    <a class="nentren" href="#"></a>
                                    <a class="khungAnhCrop" href="#">
                                        <img alt="Sự kiện thời trang diễn ra vào ngày 2/9" class="imgmuctin" src="../pic/tin-tuc/thoitrang1.JPG">
                                    </a>
                                </div>
                                <a class="title" href="#" title="Sự kiện thời trang diễn ra vào ngày 2/9">Sự kiện thời trang diễn ra vào ngày 2/9</a>
                                <span class=""><span class="view">77</span><span class="date">11/07/2022</span></span>
                                <div class="desc">Nhà thiết kế Lê Sim sẽ ra mắt bộ siêu tập thời trang thu đông năm 2016, sự kiện sẽ được tổ chức tại kinh đô thời trang New York</div>
                                <a class="detail" href="#" title="Xả hàng giảm giá lớn nhân dip 2/9">Xem thêm</a>
    
                                <div class="cb"></div>
                            </div>
                             <asp:ListView ID="ListView3" runat="server" DataSourceID="SqlDataSource3">
                                    <ItemTemplate>
                                   <a class="title1" href="ChiTietBV.aspx?ma=<%# Eval("sTieuDe") %>"><%# Eval("sTieuDe")%></a>
                                    </ItemTemplate>
                                </asp:ListView>
                        </div>
                    </div>
                    <div class="baonewinde">
                        <a class="titlehead" href="#" title="Tin trong nước">
                            <span class="ten" id="CNTT">Cẩm nang thời trang
                        </a>
                        <div class="cb"></div>
                        <div class="list">
                            <div class="box1">
                                <div class="khungAnh">
                                    <a class="nentren" href="#"></a>
                                    <a class="khungAnhCrop" href="#">
                                        <img alt="Cách phối đồ cho những cô nàng chân ngắn" class="imgmuctin" src="../pic/tin-tuc/thoitrang.JPG">
                                    </a>
                                </div>
                                <a class="title" href="#" title="Cách phối đồ cho những cô nàng chân ngắn">Cách phối đồ cho những cô nàng chân ngắn</a>
                                <span class=""><span class="view">77</span><span class="date">11/07/2022</span></span>
                                <div class="desc">Phố đồ bí quyết cho những cô nàng chân ngắn không còn lo ngại, mặc cảm mỗi khi dạo phố</div>
                                <a class="detail" href="#" title="Xả hàng giảm giá lớn nhân dip 2/9">Xem thêm</a>
                                <div class="cb"></div>
                            </div>
                            <asp:ListView ID="ListView4" runat="server" DataSourceID="SqlDataSource4">
                                    <ItemTemplate>
                                   <a class="title1" href="ChiTietBV.aspx?ma=<%# Eval("sTieuDe") %>"><%# Eval("sTieuDe")%></a>
                                    </ItemTemplate>
                                </asp:ListView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLNVConnectionString %>" SelectCommand="SELECT * FROM TinTuc where sChuDe ='PQA'"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QLNVConnectionString %>" SelectCommand="SELECT * FROM TinTuc where sChuDe ='TKM'"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:QLNVConnectionString %>" SelectCommand="SELECT * FROM TinTuc where sChuDe ='TTGT'"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:QLNVConnectionString %>" SelectCommand="SELECT * FROM TinTuc where sChuDe ='CNTT'"></asp:SqlDataSource>
        </div>
    <!--chân trang-->
    <div id="footer">
        <div class="contener">
            <div class=" menufoter">
                <p>©2015 Copyright by EmDep.vn            </div>
        </div>
    </div>
    </form>
</body>
</html>
