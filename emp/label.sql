-- emp r/w label
BEGIN
    SA_SYSDBA.CREATE_POLICY(
        policy_name     => 'emp_r_label',
        column_name     => 'r_label',
        default_options => 'read_control'
    );
    SA_SYSDBA.CREATE_POLICY(
        policy_name     => 'emp_w_label',
        column_name     => 'w_label',
        default_options => 'write_control'
    );
END;
/

-- sal r/w label
BEGIN
    SA_SYSDBA.CREATE_POLICY(
        policy_name     => 'sal_r_label',
        column_name     => 'r_label',
        default_options => 'read_control'
    );
    SA_SYSDBA.CREATE_POLICY(
        policy_name     => 'sal_w_label',
        column_name     => 'w_label',
        default_options => 'write_control'
    );
END;
/

-- proj r/w label
BEGIN
    SA_SYSDBA.CREATE_POLICY(
        policy_name     => 'proj_r_label',
        column_name     => 'r_label',
        default_options => 'read_control'
    );
    SA_SYSDBA.CREATE_POLICY(
        policy_name     => 'proj_w_label',
        column_name     => 'w_label',
        default_options => 'write_control'
    );
END;
/

-- budget r/w label
BEGIN
    SA_SYSDBA.CREATE_POLICY(
        policy_name     => 'budget_r_label',
        column_name     => 'r_label',
        default_options => 'read_control'
    );
    SA_SYSDBA.CREATE_POLICY(
        policy_name     => 'budget_w_label',
        column_name     => 'w_label',
        default_options => 'write_control'
    );
END;
/