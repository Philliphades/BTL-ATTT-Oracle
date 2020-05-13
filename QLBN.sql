select * from test.SINHVIEN;

select * from test.SINHVIEN
where HOTEN='Nguyen Le Xuan Phuoc';

DELETE FROM sinhvien WHERE id=6;
 
INSERT INTO test.sinhvien VALUES (14,'Nguyen The Hung','Nam','Hau Giang','Sinh Vien','AT11E','Mien Nam',140);
INSERT INTO test.sinhvien VALUES (15,'Le Cong The','Nam','Hau Giang','Lop Truong','AT11D','Mien Bac',110);

UPDATE test.sinhvien
SET gioitinh = 'Nam'
WHERE ID = 4;

select * from test.SINHVIEN where COSO='Mien Nam';

select hoten,gioitinh,quequan,chucvu,lop,coso,LABEL_TO_CHAR(LB_COL) FROM TEST.SINHVIEN;