drop table if exists SinhVienLop, Lop, SinhVien, GiaoVien, MonHoc;

create table MonHoc (
	MaMH varchar(5) not null,
	TenMH varchar(30) not null,
	SoTC int not null,
	PRIMARY KEY (MaMH)
);

create table GiaoVien (
	MaGV varchar(5) not null,
	HoGV varchar(10) not null,
	TenGV varchar(30) not null,
	DonVi varchar(50) not null,
	PRIMARY KEY (MaGV)
);

create table SinhVien (
	MaSV varchar(8) not null,
	HoSV varchar(10) not null,
	TenSV varchar(30) not null,
	NgaySinh date not null,
	NoiSinh varchar(50) not null,
	PRIMARY KEY (MaSV)
);

create table Lop (
	MaLop varchar(8) not null,
	MaMH varchar(30) not null,
	NamHoc int not null,
	HocKy varchar(6) not null,
	MaGV varchar(5) not null,
	PRIMARY KEY (MaLop, MaMH, MaGV),
	FOREIGN KEY (MaMH) REFERENCES MonHoc (MaMH),
	FOREIGN KEY (MaGV) REFERENCES GiaoVien (MaGV)
);

create table SinhVienLop (
	MaSV varchar(8) not null,
	MaLop varchar(8) not null,
	Diem double,
	PRIMARY KEY (MaSV, MaLop),
	FOREIGN KEY (MaSV) REFERENCES SinhVien (MaSV),
	FOREIGN KEY (MaLop) REFERENCES Lop (MaLop) 
);