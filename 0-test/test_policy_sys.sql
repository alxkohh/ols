BEGIN
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
END;
/

BEGIN
    SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
        policy_name    => 'test_policy',
        schema_name    => 'company', 
        table_name     => 'test_tab',
        table_options  => 'READ_CONTROL'
    );
END;
/