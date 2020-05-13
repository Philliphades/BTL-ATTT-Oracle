select * from test.SINHVIEN;

--Write down
UPDATE test.sinhvien SET gioitinh = 'Nu' WHERE ID = 2;

--No Write down
UPDATE test.sinhvien SET gioitinh = 'Nu' WHERE HOTEN= 'Phan Thi Thao';
-- Xem thong tin sinh vieen lop khac
select * FROM TEST.SINHVIEN where LOP='AT11E';

select SA_SESSION.LABEL('chinhsach')From DUAL;

select hoten,gioitinh,quequan,chucvu,lop,coso,LABEL_TO_CHAR(LB_COL) FROM TEST.SINHVIEN;