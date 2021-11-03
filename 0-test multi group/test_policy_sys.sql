BEGIN
    SA_SYSDBA.DROP_POLICY(
        policy_name     => 'test3_policy',
        drop_column     => TRUE
    );
END;
/

BEGIN
    SA_SYSDBA.CREATE_POLICY(
        policy_name     => 'test3_policy',
        column_name     => 'test3_label',
        default_options => 'READ_CONTROL'
    );
    SA_COMPONENTS.CREATE_LEVEL (
        policy_name => 'test3_policy',
        level_num   => 30,
        short_name  => 'S',
        long_name   => 'SECRET'
    );
    SA_COMPONENTS.CREATE_LEVEL (
        policy_name => 'test3_policy',
        level_num   => 10,
        short_name  => 'U',
        long_name   => 'UNCLASSIFIED'
    );
    
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'test3_policy',
        group_num   => 1000,
        short_name  => 'DIR',
        long_name   => 'DIRECTOR'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'test3_policy',
        group_num   => 1100,
        short_name  => 'MGR',
        long_name   => 'MANAGER',
        parent_name => 'DIR'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'test3_policy',
        group_num   => 1110,
        short_name  => 'EMP',
        long_name   => 'EMPLOYEE',
        parent_name => 'MGR'
    );

    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'test3_policy',
        group_num   => 2000,
        short_name  => 'GLOBAL',
        long_name   => 'GLOBAL'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'test3_policy',
        group_num   => 2100,
        short_name  => 'APAC',
        long_name   => 'APAC',
        parent_name => 'GLOBAL'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'test3_policy',
        group_num   => 2110,
        short_name  => 'SG',
        long_name   => 'SINGAPORE',
        parent_name => 'APAC'
    );
END;
/

BEGIN
    SA_POLICY_ADMIN.REMOVE_TABLE_POLICY('test3_policy', 'company', 'test3_tab');
END;
/

BEGIN
    SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
        policy_name    => 'test3_policy',
        schema_name    => 'company', 
        table_name     => 'test3_tab',
        table_options  => 'READ_CONTROL'
    );
END;
/

BEGIN
    SA_USER_ADMIN.SET_USER_LABELS (
        policy_name       => 'test3_policy',
        user_name         => 'joycey',
        max_read_label    => 'S::MGR,GLOBAL',
        max_write_label   => 'S::MGR,GLOBAL',
        min_write_label   => 'S',
        def_label         => 'S::MGR,GLOBAL',
        row_label         => 'S::MGR,GLOBAL'
    );

    SA_USER_ADMIN.SET_USER_PRIVS(
        policy_name   => 'test3_policy',
        user_name     => 'company', 
        privileges    => 'READ'
    );
END;
/