select * from test.SINHVIEN;

--No Write Up
INSERT INTO test.sinhvien VALUES (13,'Nguyen Van Hung','Nam','Ha Noi','Quan Ly','','Bac Nam',100);--policy with check option violation 

UPDATE test.sinhvien SET gioitinh = 'Nam' WHERE CHUCVU ='Quan Ly';

INSERT INTO test.sinhvien VALUES (14,'Nguyen Van Hung','Nam','Ha Noi','Sinh Vien','ATT11D','Mien Bac',120); --chính sách v?i vi ph?m tùy ch?n ki?m tra C

INSERT INTO test.sinhvien VALUES (14,'Nguyen Van Hung','Nam','Ha Noi','Sinh Vien','ATT11E','Mien Bac',120);-- ERR GROUP

