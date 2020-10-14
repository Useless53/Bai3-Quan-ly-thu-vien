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
('S001',N'Ngôn ng? L?p trình 1','TG001','TL001','NXB002','2003',20000),
('S002',N'Ngôn ng? L?p trình 2','TG002','TL001','NXB002','2004',25000),
('S003',N'K? thu?t vi x? lí và l?p trình Asembli','TG004','TL002','NXB003','2005',31000),
('S004',N'C?u trúc máy tính','TG003','TL002','NXB001','2004',22000),
('S005',N'Ph??ng Pháp nghiên c?u Khoa H?c','TG005','TL004','NXB001','2009',35000)
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
('BD001', N'Nguy?n Anh D?ng','11/01/1994', N'Nam','234',N'Hà N?i'),
('BD002', N'Nguy?n Anh Hùng','11/01/1988', N'Nam','345',N'L?ng S?n'),
('BD003', N'Nguy?n Ng?c ??c','11/01/1979', N'Nam','456',N'B?c Ninh'),
('BD004', N'V??ng Th? Lê','11/01/1982', N'N?', '678', N'Hà N?i'),
('BD005', N'??ng Th? Linh','11/01/1990', N'N?','115',N'Nam ??nh'),
('BD006', N'Tr?n M?nh C??ng','11/01/1993',N'Nam','253', N'Hà N?i'),
('BD007', N'Lê Vi?t ??c','11/01/1995', N'Nam','997', N'Hà T?nh'),
('BD008', N'Tr?n Th? Tuy?t Nhung','11/01/1987', N'N?', '986', N'H?i Phòng'),
('BD009', N'Nguy?n Ng?c Anh','11/01/1989', N'Nam','989',N'Hà N?i'),
('BD010', N'Nguy?n Thanh Huy?n','11/01/1997',N'N?','997',N'Hà N?i')
go
insert into NXB values
('NXB001',N'Nhà xu?t b?n Kim ??ng',N'10-C?u Gi?y-Hà N?i'),
('NXB002',N'Nhà xu?t b?n Giáo D?c',N'20-?ào Tr?ng T?n-Hà N?i'),
('NXB003',N'Nhà xu?t b?n Quân ??i',N'15-Xuân Di?u-Ba ?ình-Hà N?i'),
('NXB004',N'Nhà xu?t b?n S? Th?t',N'24-Nguy?n Tri Ph??ng-C?u Gi?y-Hà N?i'),
('NXB005',N'Nhà xu?t b?n Khoa H?c',N'50-C?u Di?n-T? Liêm-Hà N?i'),
('NXB006',N'Nhà xu?t b?n ?H Qu?c Gia',N'23-Xuân Thu?-C?u Gi?y-Hà N?i'),
('NXB007',N'Nhà xu?t b?n ?H Lu?t',N'108-Nguy?n Chí Thanh-Ba ?ình-Hà N?i'),
('NXB008',N'Nhà xu?t b?n Chính Tr? Qu?c Gia',N'47-Hoàng Qu?c Vi?t-C?u Gi?y-Hà N?i'),
('NXB009',N'Nhà xu?t b?n H?ng ??c',N'35-?ào Duy T?-tp.Thanh Hoá-Thanh Hoá')
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
('TL001',N'Truy?n Tranh'),
('TL002',N'Truy?n Trinh Thám'),
('TL003',N'Truy?n Ki?m Hi?p'),
('TL004',N'Ti?u Thuy?t'),
('TL005',N'Khoa H?c ??i S?ng'),
('TL006',N'Khoa H?c Vi?n T??ng'),
('TL007',N'Sách L?ch S?'),
('TL008',N'Th? Thao Trong N??c'),
('TL009',N'Th? Thao N??c Ngoài'),
('TL010',N'Tin Th?i S?'),
('TL011',N'Sách Giáo Khoa'),
('TL012',N'Truy?n C? Tích'),
('TL013',N'Sách Pháp Lu?t'),
('TL014',N'H??ng D?n Lu?t'),
('TL015',N'Sách Kinh T? H?c'),
('TL016',N'Thuy?t Kinh T?'),
('TL017',N'Tâm Lí T?i Ph?m')
go
insert into DangNhap values
('vkl','1234'),
('nhq','1234'),
('tvat','1234'),
('lcta','1234'),
('nqt','1234'),
('khh','1234')
go