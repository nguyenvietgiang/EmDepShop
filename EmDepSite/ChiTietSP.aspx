<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChiTietSP.aspx.cs" Inherits="EmDepSite.ChiTietSP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sản phẩm</title>
    <link href="../css/chi-tiet-san-pham.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 122px;
        }
        .auto-style4 {
            width: 102px;
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
            <a href="#">Chi tiết sản phẩm</a>
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
        <div class="chitietsp">
            <asp:ListView ID="ListView1" runat="server" OnItemCommand="ListView1_ItemCommand">
                        <ItemTemplate>
                    <div class="baosp">
                        <asp:Literal ID="Literal1"  runat="server" Text='<%# Eval("AnhSP") %>'></asp:Literal>
                    </div>
                    <div class="baochitiet">
                        <div class="product-title">
                            <span id="pro_sku">Mã Số Sản Phẩm: <%# Eval("sMaSP") %></span>
                            <h1 id="ten2" runat="server">Sản Phẩm: <%# Eval("sTenSP") %></h1>
                        </div>
                        <div class="product-price">
                            <span id="gia2">Giá: <%# Eval("iGia") %> Đồng</span>
                        </div>
                        <div class="thongso">
                            <div class="size">
                                <label>Kích thước</label>
                                <select class="select-site">
                                    <option value="XL">XL</option>
                                    <option value="L">L</option>
                                    <option value="M">M</option>
                                    <option value="S">S</option>
                                </select>
                            </div>
                            <div class="soluong">
                                <label>Số lượng</label>
                                <input id="quantity" type="number" name="quantity" min="1" value="1" class="tc item-quantity">
                            </div>
                            <div class="mausac">
                                <label>Màu sắc</label>
                                <select class="select-site">
                                    <option value="Xanh">Xanh</option>
                                    <option value="Đỏ">Đỏ</option>
                                    <option value="Tím">Tím</option>
                                    <option value="Vàng">Vàng</option>
                                </select>
                            </div>
                            <div class="chatlieu">
                                <label>Chất liệu</label>
                                <span>Vải</span>
                            </div>
                            <div class="chatlieu">
                                <label>Hãng</label>
                                 <a href="TatcaSP.aspx?hang=<%# Eval("sHang") %>" id="hang2"><%# Eval("sHang") %></a>
                            </div>
                        </div>             
                        </div>
                    </div>
                            </ItemTemplate>
                    </asp:ListView>
            <asp:Label ForeColor="Green" ID="Label1" runat="server" Text=""></asp:Label>
             <asp:Button ID="Button1" class="btn-detail btn-color-add" runat="server" OnClick="Button1_Click" name="add" Text="Thêm Vào Giỏ Hàng" />
             <div>
                     <h3>Đánh Giá Sản Phẩm.</h3>
                     <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="396px" placeholder="Đăng nhập để lại đánh giá."></asp:TextBox> 
                 &nbsp;&nbsp;
                     <asp:Button ID="Button2" runat="server" BackColor="#e05543" ForeColor="White" Height="44px" OnClick="Button2_Click" Text="Đánh Giá" Width="94px" />
                     <h4>Tất Cả Đánh Giá</h4>
                     <asp:ListView ID="ListView2" runat="server">
                         <ItemTemplate>
                           <table class="auto-style1">
                               <tr>
                                   <td class="auto-style4"><p> <%# Eval("sTenKH") %>:</p></td>
                                   <td><p><%# Eval("sBinhLuan")%>.</p></td>
                               </tr>
                           </table>
                         </ItemTemplate>
                     </asp:ListView>
                 </div>
        </div>
                </div>
             </div>
        </div>
    </form>
        
    <!--chân trang-->
    <div id="footer">
        <div class="contener">
            <div class=" menufoter">
                <p>©2015 Copyright by EmDep.vn</p>
            </div>
        </div>
    </div>
</body>
</html>
