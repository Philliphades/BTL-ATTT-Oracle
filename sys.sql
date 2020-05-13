-- 1. Tao user Test---
create user test IDENTIFIED by 291105375;
grant unlimited tablespace to test;
grant create session to test;
grant create table to test;

ALTER USER lbacsys IDENTIFIED BY lbacsys ACCOUNT UNLOCK;

select hoten,gioitinh,quequan,chucvu,lop,coso,LABEL_TO_CHAR(LB_COL) FROM TEST.SINHVIEN;
select * from test.SINHVIEN;

--gan nhan cac hang du lieu cho bang 
UPDATE TEST.SINHVIEN SET LB_COL = char_to_label('chinhsach','TS:D,E:BN,MB,MN') WHERE COSO='Bac Nam';
UPDATE TEST.SINHVIEN SET LB_COL = char_to_label('chinhsach','S:D:MB') WHERE CHUCVU='Lop Truong' and LOP='AT11D' and COSO='Mien Bac';
UPDATE TEST.SINHVIEN SET LB_COL = char_to_label('chinhsach','S:E:MN') WHERE CHUCVU='Lop Truong' and LOP='AT11E' and COSO='Mien Nam';
UPDATE TEST.SINHVIEN SET LB_COL = char_to_label('chinhsach','C:D:MB') WHERE CHUCVU='Sinh Vien' and LOP='AT11D' and COSO='Mien Bac';
UPDATE TEST.SINHVIEN SET LB_COL = char_to_label('chinhsach','C:E:MN') WHERE CHUCVU='Sinh Vien' and LOP='AT11E' and COSO='Mien Nam';

--Tao cac nguoi dung
create user QLBN IDENTIFIED by 291105375;
grant unlimited tablespace to QLBN;
grant create session to QLBN;

create user LT11DMB IDENTIFIED by 291105375;
grant unlimited tablespace to LT11DMB;
grant create session to LT11DMB;

create user LT11EMN IDENTIFIED by 291105375;
grant unlimited tablespace to LT11EMN;
grant create session to LT11EMN;

create user SV11DMB IDENTIFIED by 291105375;
grant unlimited tablespace to SV11DMB;
grant create session to SV11DMB;

create user SV11EMN IDENTIFIED by 291105375;
grant unlimited tablespace to SV11EMN;
grant create session to SV11EMN;
