select * from test.SINHVIEN;
select hoten,Quequan,coso FROM TEST.SINHVIEN WHERE LOP='AT11D';

UPDATE test.sinhvien SET QUEQUAN = 'Soc trang' WHERE HOTEN='Nguyen Hung';

--xem label cua user
select SA_SESSION.LABEL('chinhsach')From DUAL;

UPDATE test.sinhvien SET QueQuan = 'Tay Ninh' WHERE Chucvu='Lop truong';


