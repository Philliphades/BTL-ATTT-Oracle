---4. Tao chinh sach OLS
EXECUTE SA_SYSDBA.CREATE_POLICY(policy_name => 'chinhsach', column_name =>'lb_col',default_options =>'no_control');
--EXECUTE SA_SYSDBA.DROP_POLICY(policy_name => 'chinhsach');

--5. Dinh nghia label LEVEL
EXECUTE SA_COMPONENTS.CREATE_LEVEL(policy_name => 'chinhsach', level_num => 100, short_name => 'TS', long_name => 'TOP_SECRET');
EXECUTE	SA_COMPONENTS.CREATE_LEVEL(policy_name => 'chinhsach', level_num => 75, short_name => 'S', long_name => 'SECRET');
EXECUTE	SA_COMPONENTS.CREATE_LEVEL(policy_name => 'chinhsach', level_num => 50, short_name => 'C', long_name => 'CONFIDENTAL');
EXECUTE	SA_COMPONENTS.CREATE_LEVEL(policy_name => 'chinhsach', level_num => 25, short_name => 'UC', long_name => 'UNLASSIFIED');

--6. dinh nghia COMPARNENT
EXECUTE  SA_COMPONENTS.CREATE_COMPARTMENT(policy_name => 'chinhsach', comp_num => 65, short_name => 'D', long_name => 'AT11D');
EXECUTE  SA_COMPONENTS.CREATE_COMPARTMENT(policy_name => 'chinhsach', comp_num => 55, short_name => 'E', long_name => 'AT11E');

-- 7. dinh nghia Groups
EXECUTE SA_COMPONENTS.CREATE_GROUP(policy_name => 'chinhsach', group_num => 200, short_name => 'BN', long_name => 'Bac Nam');
EXECUTE SA_COMPONENTS.CREATE_GROUP(policy_name => 'chinhsach', group_num => 210, short_name => 'MB', long_name => 'Mien Bac');
EXECUTE SA_COMPONENTS.CREATE_GROUP(policy_name => 'chinhsach', group_num => 220, short_name => 'MN', long_name => 'Mien Nam');


--8. Tao cac nhan du lieu
EXECUTE SA_LABEL_ADMIN.CREATE_LABEL(policy_name => 'chinhsach', label_tag => 100, label_value => 'TS:D,E:BN,MB,MN',data_label => TRUE);
EXECUTE SA_LABEL_ADMIN.CREATE_LABEL(policy_name => 'chinhsach', label_tag => 110, label_value => 'S:D:MB',data_label => TRUE);
EXECUTE SA_LABEL_ADMIN.CREATE_LABEL(policy_name => 'chinhsach', label_tag => 120, label_value => 'C:D:MB',data_label => TRUE);
EXECUTE SA_LABEL_ADMIN.CREATE_LABEL(policy_name => 'chinhsach', label_tag => 130, label_value => 'S:E:MN',data_label => TRUE);
EXECUTE SA_LABEL_ADMIN.CREATE_LABEL(policy_name => 'chinhsach', label_tag => 140, label_value => 'C:E:MN',data_label => TRUE);

--9. AP DUNG CHINH SACH AN TOAN OLS CHO bang SINH VIEN
BEGIN 
      SA_POLICY_ADMIN.REMOVE_TABLE_POLICY (
      policy_name => 'chinhsach',
      schema_name => 'test',
      table_name => 'sinhvien',
      drop_column => false
    );
 
    SA_POLICY_ADMIN.APPLY_TABLE_POLICY(
    policy_name =>'chinhsach',schema_name => 'test',
    table_name => 'sinhvien',table_options => 'LABEL_DEFAULT,READ_CONTROL,WRITE_CONTROL,LABEL_UPDATE,CHECK_CONTROL',
    label_function => null,predicate => null
    );
END;

--- Set users labels---Gán quy?n ng??i dùng theo các nhãn– *
EXECUTE SA_USER_ADMIN.SET_USER_LABELS(POLICY_NAME=>'chinhsach',user_name=>'TEST',MAX_READ_LABEL=>'TS:E,D:BN,MB,MN',MAX_WRITE_LABEL=>'TS:E,D:BN,MB,MN',MIN_WRITE_LABEL=>'UC',DEF_LABEL=>'TS:E,D:BN,MB,MN',ROW_LABEL=>'TS:E,D:BN,MB,MN');
EXECUTE SA_USER_ADMIN.SET_USER_LABELS(POLICY_NAME=>'chinhsach',user_name=>'QLBN',MAX_READ_LABEL=>'TS:E,D:BN,MB,MN',MAX_WRITE_LABEL=>'TS:E,D:BN,MB,MN',MIN_WRITE_LABEL=>'UC',DEF_LABEL=>'TS:E,D:BN,MB,MN',ROW_LABEL=>'TS:E,D:BN,MB,MN');
EXECUTE SA_USER_ADMIN.SET_USER_LABELS(POLICY_NAME=>'chinhsach',user_name=>'LT11DMB',MAX_READ_LABEL=>'S:D:MB',MAX_WRITE_LABEL=>'S:D:MB',MIN_WRITE_LABEL=>'UC',DEF_LABEL=>'S:D:MB',ROW_LABEL=>'S:D:MB');
EXECUTE SA_USER_ADMIN.SET_USER_LABELS(POLICY_NAME=>'chinhsach',user_name=>'LT11EMN',MAX_READ_LABEL=>'S:E:MN',MAX_WRITE_LABEL=>'S:E:MN',MIN_WRITE_LABEL=>'UC',DEF_LABEL=>'S:E:MN',ROW_LABEL=>'S:E:MN');
EXECUTE SA_USER_ADMIN.SET_USER_LABELS(POLICY_NAME=>'chinhsach',user_name=>'SV11EMN',MAX_READ_LABEL=>'C:E:MN',MAX_WRITE_LABEL=>'C:E:MN',MIN_WRITE_LABEL=>'UC',DEF_LABEL=>'C:E:MN',ROW_LABEL=>'C:E:MN');
EXECUTE SA_USER_ADMIN.SET_USER_LABELS(POLICY_NAME=>'chinhsach',user_name=>'SV11DMB',MAX_READ_LABEL=>'C:D:MB',MAX_WRITE_LABEL=>'C:D:MB',MIN_WRITE_LABEL=>'UC',DEF_LABEL=>'C:D:MB',ROW_LABEL=>'C:D:MB');

---Các view thông tin c?a OLS
select * from DBA_SA_USERS;
select * from DBA_SA_USER_LEVELS;
select * from DBA_SA_USER_COMPARTMENTS;
select * from DBA_SA_USER_GROUPS;