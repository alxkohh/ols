BEGIN
    SA_SYSDBA.DROP_POLICY(
        policy_name     => 'test_policy',
        drop_column     => TRUE
    );
    SA_SYSDBA.CREATE_POLICY(
        policy_name     => 'test_policy',
        column_name     => 'test_label',
        default_options => 'READ_CONTROL'
    );
    SA_COMPONENTS.CREATE_LEVEL (
        policy_name => 'test_policy',
        level_num   => 30,
        short_name  => 'S',
        long_name   => 'SECRET'
    );
    SA_COMPONENTS.CREATE_LEVEL (
        policy_name => 'test_policy',
        level_num   => 10,
        short_name  => 'U',
        long_name   => 'UNCLASSIFIED'
    );
    
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'test_policy',
        group_num   => 1000,
        short_name  => 'DIR',
        long_name   => 'DIRECTOR'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'test_policy',
        group_num   => 1100,
        short_name  => 'MGR',
        long_name   => 'MANAGER',
        parent_name => 'DIR'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'test_policy',
        group_num   => 1110,
        short_name  => 'EMP',
        long_name   => 'EMPLOYEE',
        parent_name => 'MGR'
    );
END;
/

BEGIN
    SA_POLICY_ADMIN.REMOVE_TABLE_POLICY('test_policy', 'company', 'test_tab');
    SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
        policy_name    => 'test_policy',
        schema_name    => 'company', 
        table_name     => 'test_tab',
        table_options  => 'READ_CONTROL'
    );
END;
/