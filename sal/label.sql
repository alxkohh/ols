-- sal r/w label
BEGIN
    SA_SYSDBA.CREATE_POLICY(
        policy_name     => 'sal_r_label_policy',
        column_name     => 'sal_r_label',
        default_options => 'read_control'
    );
    SA_SYSDBA.CREATE_POLICY(
        policy_name     => 'sal_w_label_policy',
        column_name     => 'sal_w_label',
        default_options => 'write_control'
    );
END;
/
