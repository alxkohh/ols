-- emp r/w label
BEGIN
    SA_SYSDBA.CREATE_POLICY(
        policy_name     => 'emp_r_label_policy',
        column_name     => 'emp_r_label',
        default_options => 'read_control'
    );
    SA_SYSDBA.CREATE_POLICY(
        policy_name     => 'emp_w_label_policy',
        column_name     => 'emp_w_label',
        default_options => 'write_control'
    );
END;
/
