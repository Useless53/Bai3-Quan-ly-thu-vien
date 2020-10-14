 create database QUAN_LY_THU_VIEN
 go
 use QUAN_LY_THU_VIEN
 go
 create table Sach
 (
	ID_Sach varchar(10) not null,
	TenSach nvarchar(50) not null,
	TG nvarchar(50) not null,
	ID_TheLoai varchar(10) not null,
	ID_NXB varchar(10) not null,
	NamXb bigint null,
	Gia bigint null
 )
 go
 create table GiaTriCaBiet
 (
	ID_Sach varchar(10)not null,
	ID_GTCB varchar(10)not null
 )
 go
 create table BanDoc
 (
	ID_BanDoc varchar(10) not null,
	Ten nvarchar(50) not null,
	NgaySinh date not null,
	GT nvarchar(3),
	SDT bigint,
	DiaChi nvarchar(50) null
 )
 go
 create table NXB
 (
	ID_NXB varchar(10) not null,
	TenNXB nvarchar(50) not null,
	DiaChi nvarchar(50) null,
 )
 go
 create table PhieuMuon
 (
	ID_PhieuMuon varchar(10) not null,
	ID_BanDoc varchar(10) not null,
	NgayMuon date not null,
	NgayTra date not null,
	GhiChu nvarchar(50) null
 )
 go
 create table ChiTietPhieuMuon
 (
	ID_PhieuMuon varchar(10) not null,
	ID_GTCB varchar(10)not null,
 )
 go
 create table TheLoai
 (
	ID_TheLoai varchar(10) not null,
	TenTL nvarchar(50)not null
 )
 go
 create table DangNhap
 (
	Username varchar(50), 
	Pass varchar(50)
 )
 go
 alter table NXB add constraint PK_NXB primary key (ID_NXB)
 alter table BanDoc add constraint PK_BD primary key (ID_BanDoc)
 alter table TheLoai add constraint PK_TL primary key (ID_TheLoai)
 alter table Sach add constraint PK_S primary key (ID_Sach)
 alter table PhieuMuon add constraint PK_PM primary key (ID_PhieuMuon)
 alter table GiaTriCaBiet add constraint PK_GTCB primary key clustered 
 (
	ID_Sach asc,
	ID_GTCB asc
 )
 alter table ChiTietPhieuMuon add constraint PK_CTPM primary key clustered
 (
	ID_PhieuMuon asc,
	ID_GTCB asc
 )
 go
 insert into Sach values 
('S001',N'Ngôn ngữ Lập trình 1','TG001','TL001','NXB002','2003',20000),
('S002',N'Ngôn ngữ Lập trình 2','TG002','TL001','NXB002','2004',25000),
('S003',N'Kĩ thuật vi xử lí và lập trình Asembli','TG004','TL002','NXB003','2005',31000),
('S004',N'Cấu trúc máy tính','TG003','TL002','NXB001','2004',22000),
('S005',N'Phương Pháp nghiên cứu Khoa Học','TG005','TL004','NXB001','2009',35000)
go
insert into GiaTriCaBiet values
('S001','GTCB011'),
('S001','GTCB012'),
('S001','GTCB013'),
('S001','GTCB014'),
('S001','GTCB015'),
('S002','GTCB021'),
('S002','GTCB022'),
('S002','GTCB023'),
('S002','GTCB024'),
('S002','GTCB025'),
('S003','GTCB031'),
('S003','GTCB032'),
('S003','GTCB033'),
('S003','GTCB034'),
('S003','GTCB035'),
('S004','GTCB041'),
('S004','GTCB042'),
('S004','GTCB043'),
('S004','GTCB044'),
('S004','GTCB045'),
('S005','GTCB051'),
('S005','GTCB052'),
('S005','GTCB053'),
('S005','GTCB054'),
('S005','GTCB055')
go
insert into BanDoc Values
('BD001', N'Nguyễn Anh Dũng','11/01/1994', N'Nam','234',N'Hà Nội'),
('BD002', N'Nguyễn Anh Hùng','11/01/1988', N'Nam','345',N'Lạng Sơn'),
('BD003', N'Nguyễn Ngọc Đức','11/01/1979', N'Nam','456',N'Bắc Ninh'),
('BD004', N'Vương Thị Lê','11/01/1982', N'Nữ', '678', N'Hà Nội'),
('BD005', N'Đặng Thị Linh','11/01/1990', N'Nữ','115',N'Nam Định'),
('BD006', N'Trần Mạnh Cường','11/01/1993',N'Nam','253', N'Hà Nội'),
('BD007', N'Lê Viết Đức','11/01/1995', N'Nam','997', N'Hà Tĩnh'),
('BD008', N'Trần Thị Tuyết Nhung','11/01/1987', N'Nữ', '986', N'Hải Phòng'),
('BD009', N'Nguyễn Ngọc Anh','11/01/1989', N'Nam','989',N'Hà Nội'),
('BD010', N'Nguyễn Thanh Huyền','11/01/1997',N'Nữ','997',N'Hà Nội')
go
insert into NXB values
('NXB001',N'Nhà xuất bản Kim Đồng',N'10-Cầu Giấy-Hà Nội'),
('NXB002',N'Nhà xuất bản Giáo Dục',N'20-Đào Trọng Tấn-Hà Nội'),
('NXB003',N'Nhà xuất bản Quân Đội',N'15-Xuân Diệu-Ba Đình-Hà Nội'),
('NXB004',N'Nhà xuất bản Sự Thật',N'24-Nguyễn Tri Phương-Cầu Giấy-Hà Nội'),
('NXB005',N'Nhà xuất bản Khoa Học',N'50-Cầu Diễn-Từ Liêm-Hà Nội'),
('NXB006',N'Nhà xuất bản ĐH Quốc Gia',N'23-Xuân Thuỷ-Cầu Giấy-Hà Nội'),
('NXB007',N'Nhà xuất bản ĐH Luật',N'108-Nguyễn Chí Thanh-Ba Đình-Hà Nội'),
('NXB008',N'Nhà xuất bản Chính Trị Quốc Gia',N'47-Hoàng Quốc Việt-Cầu Giấy-Hà Nội'),
('NXB009',N'Nhà xuất bản Hồng Đức',N'35-Đào Duy Từ-tp.Thanh Hoá-Thanh Hoá')
go 
 insert into PhieuMuon values
('MP001', 'BD001', '05/08/2015','05/16/2015','Moi'),
('MP002', 'BD002', '03/12/2015','09/27/2015','Moi'),
('MP003', 'BD003', '04/16/2015','10/17/2015','Moi'),
('MP004', 'BD004', '11/12/2014','12/12/2015','Moi'),
('MP005', 'BD005', '03/18/2015','01/27/2015','Moi')
go
insert into ChiTietPhieuMuon values
('MP001','GTCB011'),
('MP002','GTCB021'),
('MP002','GTCB022'),
('MP003','GTCB025'),
('MP003','GTCB032'),
('MP003','GTCB041'),
('MP004','GTCB051'),
('MP004','GTCB042'),
('MP004','GTCB013'),
('MP005','GTCB023')
go
insert into TheLoai values
('TL001',N'Truyện Tranh'),
('TL002',N'Truyện Trinh Thám'),
('TL003',N'Truyện Kiếm Hiệp'),
('TL004',N'Tiểu Thuyết'),
('TL005',N'Khoa Học Đời Sống'),
('TL006',N'Khoa Học Viễn Tưởng'),
('TL007',N'Sách Lịch Sử'),
('TL008',N'Thể Thao Trong Nước'),
('TL009',N'Thể Thao Nước Ngoài'),
('TL010',N'Tin Thời Sự'),
('TL011',N'Sách Giáo Khoa'),
('TL012',N'Truyện Cổ Tích'),
('TL013',N'Sách Pháp Luật'),
('TL014',N'Hướng Dẫn Luật'),
('TL015',N'Sách Kinh Tế Học'),
('TL016',N'Thuyết Kinh Tế'),
('TL017',N'Tâm Lí Tội Phạm')
go
insert into DangNhap values
('vkl','1234'),
('nhq','1234'),
('tvat','1234'),
('lcta','1234'),
('nqt','1234'),
('khh','1234')
go
--Xuat bang
create proc OutPutTable
(
	@core int
)	
as
begin
	if @core=1
		select*from Sach
	else if @core=2
		select*from GiaTriCaBiet
	else if @core=3
		select*from NXB
	else if @core=4
		select*from TheLoai
	else if @core=5 
		select *from BanDoc
	else if @core=6
		select *from PhieuMuon
	else if @core=7
		select *from ChiTietPhieuMuon
	else select *from DangNhap
end
go
--Them vao bang
create proc AddObject
(
	@core int,
	@ID1 varchar(10),
	@ID2 varchar(10),
	@ID3 varchar(10),
	@String1 nvarchar(50),
	@String2 nvarchar(50),
	@Date1 date,
	@Date2 date,
	@Gender varchar(3),
	@Num1 bigint,
	@Num2 bigint,
	@Num3 bigint
)
as
begin
	if @core=1
		insert into Sach
		values (@ID1,@String1,@String2,@ID2,@ID3,@Num1,@Num2)
	else if @core=2
		insert into GiaTriCaBiet
		values(@ID1,@ID2)
	else if @core=3
		insert into NXB
		values(@ID1,@String1,@String2)
	else if @core=4
		insert into TheLoai
		values(@ID1,@String1)
	else if @core=5
		insert into BanDoc
		values (@ID1,@String1,@Date1,@Gender,@Num1,@String2)
	else if @core=6
		insert into PhieuMuon
		values (@ID1,@ID2,@Date1,@Date2,@String1)
	else insert into ChiTietPhieuMuon
		values (@ID1,@ID2)
end
--Xoa trong bang
go
create proc DeleteObject
(
	@core int,
	@ID1 varchar(10),
	@ID2 varchar(10)
)
as
begin
	if @core=1
		delete from Sach where ID_Sach=@ID1
	else if @core=2
		delete from GiaTriCaBiet where ID_Sach=@ID1 and ID_GTCB=@ID2
	else if @core=3
		delete from NXB where ID_NXB=@ID1
	else if @core=4
		delete from TheLoai where ID_TheLoai =@ID1
	else if @core=5
		delete from BanDoc where ID_BanDoc=@ID1
	else if @core=6
		delete from PhieuMuon where ID_PhieuMuon=@ID1 and ID_BanDoc=@ID2
	else delete from ChiTietPhieuMuon where ID_PhieuMuon=@ID1 and ID_GTCB=@ID2
end
go
--Cap nhap
create proc EditObject
(
	@core int,
	@ID1 varchar(10),
	@ID2 varchar(10),
	@ID3 varchar(10),
	@String1 nvarchar(50),
	@String2 nvarchar(50),
	@Date1 date,
	@Date2 date,
	@Gender varchar(3),
	@Num1 bigint,
	@Num2 bigint,
	@Num3 bigint
)
as
begin
	if @core=1
		update Sach set TenSach=@String1,TG=@String2,ID_TheLoai=@ID2,ID_NXB=@ID3,NamXb=@Num1,Gia=@Num2 where ID_Sach=@ID1
	else if @core=2
		update GiaTriCaBiet set ID_GTCB=@ID2 where ID_Sach=@ID1
	else if @core=3
		update NXB set TenNXB=@String1,DiaChi=@String2 where ID_NXB=@ID1
	else if @core=4
		update TheLoai set TenTL=@String1 where ID_TheLoai=@ID1
	else if @core=5
		update BanDoc set Ten=@String1,NgaySinh=@Date1,GT=@Gender,SDT=@Num1,DiaChi=@String2 where ID_BanDoc=@ID1
	else if @core=6
		update PhieuMuon set ID_BanDoc=@ID2,NgayMuon=@Date1,NgayTra=@Date2 where ID_PhieuMuon=@ID1
	else update ChiTietPhieuMuon set ID_GTCB=@ID2 where ID_PhieuMuon=@ID1
end
go
--TimKiem
create proc FindObject
(
	@core int,
	@Part nvarchar(50)
)
as
begin
	if @core=1
		select distinct *from Sach where ID_Sach like ('%'+@Part+'%') or TenSach like ('%'+@Part+'%') or TG like ('%'+@Part+'%') or NamXb like ('%'+@Part+'%') or Gia like ('%'+@Part+'%')
	else if @core=2
		select distinct*from GiaTriCaBiet where ID_Sach like ('%'+@Part+'%') or ID_GTCB like ('%'+@Part+'%')
	else if @core=3
		select distinct*from NXB where ID_NXB like ('%'+@Part+'%') or TenNXB like ('%'+@Part+'%')
	else if @core=4
		select distinct*from TheLoai where ID_TheLoai like ('%'+@Part+'%') or TenTL like ('%'+@Part+'%')
	else if @core=5 
		select distinct*from BanDoc where ID_BanDoc like ('%'+@Part+'%') or Ten like ('%'+@Part+'%') or NgaySinh like ('%'+@Part+'%') or GT like ('%'+@Part+'%') or DiaChi like ('%'+@Part+'%')
	else if @core=6
		select distinct*from PhieuMuon where ID_PhieuMuon like ('%'+@Part+'%') or NgayMuon like ('%'+@Part+'%') or NgayTra like ('%'+@Part+'%') or ID_BanDoc like ('%'+@Part+'%')
	else select distinct *from ChiTietPhieuMuon where ID_GTCB like ('%'+@Part+'%') or ID_PhieuMuon like ('%'+@Part+'%') 
end
go

 