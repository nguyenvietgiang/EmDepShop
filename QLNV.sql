create database QLNV
use QLNV;
GO
  create table SanPham(
  sMaSP int  identity primary key,
  AnhSP varchar(200),
  sTenSP nvarchar(50),
  iGia int,
  sKichThuoc varchar(5),
  iSoLuong int,
  sHang nvarchar(10)
  );
  drop table SanPham
  select * from SanPham
  delete from SanPham where sKichThuoc='M'
  delete from SanPham where sMaSP='22'
create table tk2(
 sTenTK nvarchar(50),
 sGmail nvarchar(70),
 sMatKhau nvarchar(20),
 sRMatKhau nvarchar(20)
);
select * from SanPham WHERE iGia >1000 ORDER BY iGia DESC
create table banedKH(
sTenTKB nvarchar(50),
tNgayBan datetime,
sLydo nvarchar(50)
);
select * from banedKH
create trigger tgbanned
on GioHang
for insert, update
as
declare @sTenTK nvarchar(50)
select @sTenTK 
from inserted
if exists (select sTenTKB
from banedKH
where sTenTKB = @sTenTK)
rollback transaction
insert into GioHang values ('CaoThuHuong',13)
select * from GioHang
Create table KhachHang(
 sTenTK nvarchar(50),
 sTenKH nvarchar(50),
 sGioiTinh nvarchar(50),
 sDoDT int,
 sSoTK nvarchar(20),
 sDiaChi nvarchar(30),
);
select * from KhachHang

drop table KhachHang
create PROCEDURE sp_tk2
 @sTenTK nvarchar(50),
 @sGmail nvarchar(70),
 @sMatKhau nvarchar(20),
 @sRMatKhau nvarchar(20)
AS
	INSERT [tk2] ([sTenTK], [sGmail], [sMatKhau],[sRMatKhau] )
	VALUES (
	@sTenTK,
	@sGmail,
	@sMatKhau,
	@sRMatKhau)
	SET @sTenTK = @@IDENTITY
	GO
	select * from tk2
  drop table TaiKhoan
  drop proc sp_tk2
  create table GioHang(
  sTenTK nvarchar(25),
    sMaSP int
  );
  drop table GioHang
  select * from GioHang
  drop table GioiThieu
  delete from tk2 where sMatKhau = '1111'
  select * from GioHang
  select * from SanPham
  create table GioiThieu(
    sMaGT int identity,
    AnhGT varchar(200),
	sDiaChi nvarchar(50),
	sLGT1 nvarchar(1500),
	AnhGT2 varchar(200),
	sLGT2 nvarchar(1500)
  );
  
 CREATE proc GT_Update
    @sMaGT int,
    @AnhGT varchar(200),
	@sDiaChi nvarchar(50),
	@sLGT1 nvarchar(1500),
	@AnhGT2 varchar(200),
	@sLGT2 nvarchar(1500)
as
update GioiThieu
   set
   AnhGT = case when @AnhGT is null or @AnhGT = '' then AnhGT
   else @AnhGT end,
    sLGT1 = case when @sLGT1 is null or @sLGT1 = '' then sLGT1
   else @sLGT1 end,
   sDiaChi = case when @sDiaChi is null or @sDiaChi = '' then sDiaChi
   else @sDiaChi end,
    AnhGT2 = case when @AnhGT2 is null or @AnhGT2 = '' then AnhGT2
   else @AnhGT2 end,
   sLGT2 = case when @sLGT2 is null or @sLGT2 = '' then sLGT2
   else @sLGT2 end
Where sMaGT = @sMaGT
GO
select * from GioiThieu
create table TinTuc(
iMTT int identity,
sTieuDe nvarchar(50),
AnhMH varchar(200),
sNoiDung nvarchar(1500),
sChuDe nvarchar(25)
); 
insert into TinTuc values(N'Cách phối đồ cực năng động cho nàng','ccc','dddd','PQA')
insert into TinTuc values(N'Mặc Gì Cho dịp lễ 2/9 này???','ccc','dddd','TKM')
insert into TinTuc values(N'Xu Hướng Nào Đang Định Hình Phong Cách???','<image src=pictr/sp6.jpg></image>',N'Mạng xã hội, đặc biệt là Tik Tok và Instagram đang là những công cụ giúp Gen Z tạo ra và lan toả xu hướng thời trang của mình (1). Người làm thời trang không thể bỏ qua hai cái tên này nếu muốn nắm bắt phong cách thời trang gen Z. 
Gen Z cũng quan tâm đến tính lâu bền và ứng dụng của sản phẩm. Điều này đặt ra thách thức cho các hãng thời trang trong việc tạo ra các sản phẩm phù hợp với thị hiếu của họ. Càng ngày, các sản phẩm thân thiện với môi trường và dễ tái chế càng được ưa chuộng rộng rãi. 
Gen Z có nhận thức sâu sắc hơn về trách nhiệm và các vấn đề của xã hội. Họ quan tâm tới những gì đang xảy ra xung quanh mình và nó phản ánh ngay trên những gì họ mặc. Những chiếc áo phông với dòng chữ mang ý nghĩa ủng hộ một sự kiện nào đó hay câu trích dẫn thể hiện lối sống cá nhân là một trong những lựa chọn yêu thích của gen Z. ','TTGT')
insert into TinTuc values(N'Tips cách phối đồ JD1.','<image src=pictr/emdep.jpg></image>',N'Với các mẫu giày Air Jordan 1 cổ cao thì bạn nên phối với quần bó, quần jeans, quần short,... nhằm để khoe được toàn bộ vẻ đẹp của đôi giày. Bạn không nên sử dụng những chiếc quần ống quá rộng vì sẽ làm che phủ mất đi vẻ đẹp của giày. Phối quần track pants, quần sweatpants hoặc jogger cùng áo phông và giày Jordan 1 cổ cao. Combo này không những mang đến sự thoải mái và có khả năng ứng dụng cao giúp bạn tự tin đi đến bất cứ đâu.
Bạn có thể kết hợp áo phông ngắn tay hoặc dài tay màu tối với mẫu quần track pants, jogger hoặc sweatpants đơn giản với đôi giày Jordan 1 High thời thượng. Thời trang gen Z bùng nổ aesthetic với những trang phục thể hiện gu thẩm mỹ và xu hướng cảm thụ nghệ thuật riêng. Mỗi người có thể chọn cho mình một phong cách aesthetic riêng bằng việc kết hợp hài hoà màu sắc của trang phục và phụ kiện. ','CNTT')

select * from TinTuc where TinTuc.sTieuDe=N'Mặc Gì Cho dịp lễ 2/9 này???'
delete from TinTuc where iMTT =13
insert into GioiThieu values (N'EM ĐẸP SHOP',N'34B2 Hạ Long Nam Định ',N'Bán hàng quần áo, thời trang, bạn không chỉ cần có con mắt tinh tế, khả năng bắt trend, lựa chọn hàng theo mốt, kiểu được ưa thích mà còn phải khéo léo từ lời giới thiệu bán hàng. Các câu giới thiệu sản phẩm, STT bán hàng quần áo mà EmDep.VN gợi ý cho bạn có thể giúp bạn có thêm nhiều ý tưởng thú ……','1','1');
select * from GioHang join SanPham on GioHang.sMaSP  = SanPham.sMaSP   where GioHang.sTenTK ='ThanhThao'
select * from GioHang

create table BLSP(
iMaSP int,
sTenKH nvarchar(20),
sBinhLuan nvarchar(100)
);
	create table CouponsDetails(
	couponid int,
	couponcode varchar(50),
	discount int,
	maxdiscount int,
	tilldate datetime
	);

 CREATE proc MK_Update
     @sTenTK nvarchar(50),
     @sMatKhau nvarchar(20),
     @sRMatKhau nvarchar(20)
as
update tk2
   set
    sMatKhau = case when @sMatKhau is null or @sMatKhau = '' then sMatKhau
   else @sMatKhau end,
   sRMatKhau = case when @sRMatKhau is null or @sRMatKhau = '' then sRMatKhau
   else @sRMatKhau end
Where sTenTK = @sTenTK
select * from tk2
delete from tk2 where sTenTK ='vietgiang'

 CREATE proc SP_Update
  @sMaSP int,
  @AnhSP varchar(200),
  @sTenSP nvarchar(50),
  @iGia int,
  @sKichThuoc varchar(5),
  @iSoLuong int,
  @sHang nvarchar(10)
as
update SanPham
   set
    AnhSP = case when @AnhSP is null or @AnhSP = '' then AnhSP
   else @AnhSP end,
    sTenSP = case when @sTenSP is null or @sTenSP = '' then sTenSP
   else @sTenSP end,
    iGia = case when @iGia is null or @iGia = '' then iGia
   else @iGia end,
    sKichThuoc  = case when @sKichThuoc  is null or @sKichThuoc = '' then sKichThuoc 
   else @sKichThuoc  end,
    iSoLuong = case when @iSoLuong is null or @iSoLuong = '' then iSoLuong
   else @iSoLuong end,
   sHang = case when @sHang is null or @sHang = '' then sHang
   else @sHang end
Where sMaSP = @sMaSP