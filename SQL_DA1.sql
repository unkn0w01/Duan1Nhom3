CREATE DATABASE DuAn1;
USE DuAn1;

CREATE TABLE TAIKHOAN(
    TaiKhoan VARCHAR(255) PRIMARY KEY,
    MatKhau VARCHAR(255)  
);

CREATE TABLE BENHNHAN(
    MaBN VARCHAR(20) PRIMARY KEY,
    TenBN NVARCHAR(255),
    NgaySinh DATE,
    GioiTinh BIT,
    DiaChi NVARCHAR(255),
    SDT NVARCHAR(10),
);

CREATE TABLE BACSI(
    MaBS VARCHAR(20) PRIMARY KEY,
    TenBS NVARCHAR(255),
    GioiTinh BIT,
    DiaChi NVARCHAR(255),
    ChuyenKhoa NVARCHAR(255),
    SDT VARCHAR(10)
);

CREATE TABLE THUOC(
    MaThuoc VARCHAR(20) PRIMARY KEY,
    TenThuoc NVARCHAR(255),
    TacDung NVARCHAR(255),
    LieuLuong NVARCHAR(255),
    DonGia FLOAT,
    ThanhTien FLOAT
);
CREATE TABLE PHIEUKHAM(
    MaPK VARCHAR(20) PRIMARY KEY,
    MaBN VARCHAR(20),
    MaBS VARCHAR(20),
    STT VARCHAR(10),
    ChuanDoan NVARCHAR(255),
    NgayKham DATE,
    MaThuoc VARCHAR(20),
    FOREIGN KEY (MaBN) REFERENCES BENHNHAN (MaBN),
    FOREIGN KEY (MaBS) REFERENCES BACSI (MaBS),
    FOREIGN KEY (MaThuoc) REFERENCES THUOC (MaThuoc)
);

INSERT INTO TAIKHOAN(TaiKhoan,MatKhau) VALUES
('ADMIN', '123123');

INSERT INTO BENHNHAN (MaBN,TenBN,NgaySinh,GioiTinh,DiaChi,SDT) VALUES
('BN01', N'Bùi Trọng Khang', '2005-05-31', 1, 'HP', '0369563415'),
('BN02', N'Bùi Văn Hiếu', '2005-06-13', 1, 'HP', '0123456789'),
('BN03', N'Vũ Nguyễn Đức Bách', '2004-07-28', 1, 'HP', '0234567891'),
('BN04', N'Trần Huyền Diệu', '2002-03-30', 1, 'HP', '0345678912'),
('BN05', N'Trần Gia Huy', '2001-02-12', 1, 'HP', '0456789123'),
('BN06', N'Tống Duy Mạnh', '2003-12-20', 1, 'HP', '0567891234'),
('BN07', N'Đoàn Bá Toàn', '2012-02-07', 1, 'HP', '0678912345'),
('BN08', N'Nguyễn Đình Thi', '1990-10-18', 0, 'HP', '0789123456'),
('BN09', N'Trần Đình Triệu', '1999-01-29', 1, 'HP', '0891234567'),
('BN010', N'Lê Đình Sở', '2000-12-31', 1, 'HP', '0912345678');



INSERT INTO BACSI (MaBS, TenBS, GioiTinh, DiaChi, ChuyenKhoa, SDT) VALUES
('BS0001', N'Trịnh Thị Thu', 0, N'Hải Phòng', N'Thần Kinh', '0987654321'),
('BS0002', N'Nguyễn Văn A', 1, N'Hà Nội', N'Nhi', '0987654322'),
('BS0003', N'Lê Thị B', 0, N'TP.HCM', N'Tâm Lý', '0987654323'),
('BS0004', N'Phạm Văn C', 1, N'Đà Nẵng', N'Tim Mạch', '0987654324'),
('BS0005', N'Trần Thị D', 0, N'Hải Phòng', N'Ngoại Khoa', '0987654325'),
('BS0006', N'Lê Văn E', 1, N'Hưng Yên', N'Phụ Sản', '0987654326'),
('BS0007', N'Vũ Thị F', 0, N'Bắc Giang', N'Nhi', '0987654327'),
('BS0008', N'Nguyễn Văn G', 1, N'Hà Nam', N'Thần Kinh', '0987654328'),
('BS0009', N'Hoàng Thị H', 0, N'Thanh Hóa', N'Ngoại Khoa', '0987654329'),
('BS0010', N'Trần Văn I', 1, N'Hà Tĩnh', N'Nhi', '0987654330');

INSERT INTO THUOC (MaThuoc, TenThuoc, TacDung, LieuLuong, DonGia, ThanhTien) VALUES
('T01', 'Paracetamol', N'Thuốc giảm đau và hạ sốt', N'ngày 2 lần', 100000, 1000000),
('T02', 'Amoxicillin', N'Thuốc kháng sinh', N'ngày 3 lần', 150000, 1500000),
('T03', 'Ibuprofen', N'Thuốc giảm đau, chống viêm', N'ngày 3-4 lần', 90000, 900000),
('T04', 'Omeprazole', N'Thuốc ức chế bài tiết axit dạ dày', N'mỗi buổi sáng', 120000, 1200000),
('T05', 'Simvastatin', N'Thuốc hạ cholesterol', N'mỗi buổi tối', 80000, 800000),
('T06', 'Metformin', N'Thuốc điều trị tiểu đường', N'ngày 2-3 lần', 70000, 700000),
('T07', 'Warfarin', N'Thuốc chống đông máu', N'ngày 1 lần', 200000, 2000000),
('T08', 'Salbutamol', N'Thuốc giãn phế quản', N'theo hướng dẫn', 60000, 600000),
('T09', 'Metoprolol', N'Thuốc điều trị tăng huyết áp', N'ngày 1-2 lần', 110000, 1100000),
('T10', 'Fluoxetine', N'Thuốc trị trầm cảm', N'mỗi buổi sáng', 130000, 1300000);

INSERT INTO PHIEUKHAM (MaPK,MaBN,MaBS, STT,ChuanDoan,NgayKham,MaThuoc) VALUES
('PK1', 'BN01', 'BS0001', '001', N'Ung thư giai đoạn đầu', '2024-07-02', 'T01'),
('PK2', 'BN02', 'BS0002', '002', N'Viêm họng', '2024-08-02', 'T02'),
('PK3', 'BN03', 'BS0003', '003', N'Thiếu máu não', '2024-09-02', 'T03'),
('PK4', 'BN04', 'BS0004', '004', N'Viêm dạ dày', '2024-10-02', 'T04'),
('PK5', 'BN05', 'BS0005', '005', N'Loét dạ dày', '2024-11-02', 'T05'),
('PK6', 'BN06', 'BS0006', '006', N'Gãy xương đùi', '2024-12-02', 'T06'),
('PK7', 'BN07', 'BS0007', '007', N'Chấn thương sọ não', '2024-01-02', 'T07'),
('PK8', 'BN08', 'BS0008', '008', N'Ung thư giai đoạn cuối', '2024-02-02', 'T08'),
('PK9', 'BN09', 'BS0009', '009', N'Viêm phổi', '2024-03-02', 'T09'),
('PK10', 'BN010', 'BS0010', '0010', N'Cảm thông thường', '2024-04-02', 'T10');

SELECT * from TAIKHOAN;
SELECT * from BENHNHAN;
SELECT * from BACSI;
SELECT * from THUOC;
SELECT * from PHIEUKHAM;

