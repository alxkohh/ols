-- emp r/w label
BEGIN
    SA_SYSDBA.DROP_POLICY(
        policy_name     => 'emp_r_label_policy',
        drop_column     => TRUE
    );
    SA_SYSDBA.DROP_POLICY(
        policy_name     => 'emp_w_label_policy',
        drop_column     => TRUE
    );
END;
/

BEGIN
    SA_SYSDBA.CREATE_POLICY(
        policy_name     => 'emp_r_label_policy',
        column_name     => 'emp_r_label',
        default_options => 'READ_CONTROL, LABEL_DEFAULT'
    );
    SA_SYSDBA.CREATE_POLICY(
        policy_name     => 'emp_w_label_policy',
        column_name     => 'emp_w_label',
        default_options => 'WRITE_CONTROL'
    );
END;
/
