--- 2. Tao bang sinh vien
CREATE TABLE sinhvien(
  id number not null,
  hoten varchar2(40) not null,
  gioitinh varchar2(3) not null,
  quequan varchar2(40) not null,
  chucvu varchar2(20) not null,
  lop varchar2(10),
  coso varchar2(20) not null,
  PRIMARY KEY (id)
  );
  
   ---3. insert bang sinh vien
INSERT INTO sinhvien VALUES (1,'Trinh Hoang Son','Nam','Ninh Binh','Lop Truong','AT11D','Mien Bac'); 
INSERT INTO sinhvien VALUES (2,'Do Tong Quoc','Nam','Binh Dinh','Sinh Vien','AT11D','Mien Bac');
INSERT INTO sinhvien VALUES (3,'Ton Nu Nguyen Hau','Nu','Phu Yen','Sinh Vien','AT11E','Mien Nam');
INSERT INTO sinhvien VALUES (4,'Nguyen Thi Hang','Nu','Binh Dinh','Lop Truong','AT11E','Mien Nam');
INSERT INTO sinhvien VALUES (5,'Nguyen Le Xuan Phuoc','Nam','Tay Ninh','Quan Ly','','Bac Nam');
INSERT INTO sinhvien VALUES (6,'Nguyen Hung','Nam','Binh Duong','Sinh Vien','AT11E','Mien Nam'); 
INSERT INTO sinhvien VALUES (7,'Truong The Luc','Nam','Ho Chi Minh','Sinh Vien','AT11E','Mien Nam');
INSERT INTO sinhvien VALUES (8,'Ho Anh Dung','Nam','Thanh Hoa','Sinh Vien','AT11D','Mien Bac');
INSERT INTO sinhvien VALUES (9,'Tong Thanh Anh','Nam','Quan Binh','Sinh Vien','AT11D','Mien Bac'); 
INSERT INTO sinhvien VALUES (10,'Phan Thi Thao','Nu','Ha Noi','Quan Ly','','Bac Nam'); 


---Dùng hàm gán nhãn
---Cap các quyen can thiet cho User
GRANT SELECT,UPDATE,INSERT, DELETE ON SINHVIEN TO QLBN;
GRANT SELECT,UPDATE,INSERT, DELETE ON SINHVIEN TO LT11DMB;
GRANT SELECT,UPDATE,INSERT, DELETE ON SINHVIEN TO LT11EMN;
GRANT SELECT,UPDATE ON SINHVIEN TO SV11DMB;
GRANT SELECT,UPDATE ON SINHVIEN TO SV11EMN;

 --
 DROP TABLE sinhvien;
--DELETE FROM sinhvien WHERE id=7;

SELECT * FROM SINHVIEN;





