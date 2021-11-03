-- maximum permissions

BEGIN
    SA_USER_ADMIN.SET_USER_PRIVS(
        policy_name   => 'emp_r_label_policy',
        user_name     => 'company', 
        privileges    => 'FULL'
    );
    SA_USER_ADMIN.SET_USER_PRIVS(
        policy_name   => 'emp_w_label_policy',
        user_name     => 'company', 
        privileges    => 'FULL'
    );
    SA_USER_ADMIN.SET_USER_PRIVS(
        policy_name   => 'sal_rw_label_policy',
        user_name     => 'company', 
        privileges    => 'FULL'
    );  
    SA_USER_ADMIN.SET_USER_PRIVS(
        policy_name   => 'proj_r_label_policy',
        user_name     => 'company', 
        privileges    => 'FULL'
    );
    SA_USER_ADMIN.SET_USER_PRIVS(
        policy_name   => 'proj_w_label_policy',
        user_name     => 'company', 
        privileges    => 'FULL'
    );
    SA_USER_ADMIN.SET_USER_PRIVS(
        policy_name   => 'budget_rw_label_policy',
        user_name     => 'company', 
        privileges    => 'FULL'
    );
END;
/
