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
