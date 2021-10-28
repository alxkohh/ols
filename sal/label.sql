-- sal all label
BEGIN
    SA_SYSDBA.DROP_POLICY(
        policy_name     => 'sal_all_label_policy',
        drop_column     => TRUE
    );
END;
/

BEGIN
    SA_SYSDBA.CREATE_POLICY(
        policy_name     => 'sal_all_label_policy',
        column_name     => 'sal_all_label',
        default_options => 'READ_CONTROL, WRITE_CONTROL'
    );
END;
/
