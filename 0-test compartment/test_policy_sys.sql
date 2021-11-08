BEGIN

    SA_USER_ADMIN.SET_USER_PRIVS(
        policy_name   => 'budget_policy',
        user_name     => 'company', 
        privileges    => 'FULL'
    );
END;
/

BEGIN
    SA_SYSDBA.DROP_POLICY(
        policy_name     => 'test2_policy',
        drop_column     => TRUE
    );
    SA_SYSDBA.CREATE_POLICY(
        policy_name     => 'test2_policy',
        column_name     => 'test2_label',
        default_options => 'READ_CONTROL, WRITE_CONTROL, CHECK_CONTROL'
    );
    SA_COMPONENTS.CREATE_LEVEL (
        policy_name => 'test2_policy',
        level_num   => 30,
        short_name  => 'S',
        long_name   => 'SECRET'
    );
    SA_COMPONENTS.CREATE_LEVEL (
        policy_name => 'test2_policy',
        level_num   => 10,
        short_name  => 'U',
        long_name   => 'UNCLASSIFIED'
    );
    

    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'test2_policy',
        comp_num    => 65,
        short_name  => 'HR',
        long_name   => 'HUMAN_RESOURCE'
    );
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'test2_policy',
        comp_num    => 55,
        short_name  => 'FIN',
        long_name   => 'FINANCE'
    );
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'test2_policy',
        comp_num    => 45,
        short_name  => 'ENG',
        long_name   => 'ENGINEERING'
    );
END;
/

CREATE OR REPLACE FUNCTION gen_test_label
RETURN lbacsys.lbac_label AS
BEGIN
    RETURN to_lbac_data_label('test2_policy', 'U:ENG');
END;
/

GRANT execute on gen_test_label to public

BEGIN
    SA_POLICY_ADMIN.REMOVE_TABLE_POLICY('test2_policy', 'company', 'test2_tab');
    SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
        policy_name    => 'test2_policy',
        schema_name    => 'company', 
        table_name     => 'test2_tab',
        table_options  => 'READ_CONTROL, WRITE_CONTROL, CHECK_CONTROL',
        label_function => 'sys.gen_test_label()'
    );
END;
/