-- maximum permissions

BEGIN
    SA_USER_ADMIN.SET_USER_PRIVS(
        policy_name   => 'emp_policy',
        user_name     => 'company', 
        privileges    => 'FULL'
    );
    SA_USER_ADMIN.SET_USER_PRIVS(
        policy_name   => 'sal_policy',
        user_name     => 'company', 
        privileges    => 'FULL'
    );  
    SA_USER_ADMIN.SET_USER_PRIVS(
        policy_name   => 'proj_policy',
        user_name     => 'company', 
        privileges    => 'FULL'
    );
    SA_USER_ADMIN.SET_USER_PRIVS(
        policy_name   => 'budget_policy',
        user_name     => 'company', 
        privileges    => 'FULL'
    );
END;
/
