-- maximum permissions

BEGIN
    SA_USER_ADMIN.SET_LEVELS (
        policy_name   => 'emp_r_label_policy',
        user_name     => 'company', 
        max_level     => 'S',
        min_level     => 'U',
        def_level     => 'S',
        row_level     => 'U'
    );

    SA_USER_ADMIN.SET_COMPARTMENTS (
        policy_name   => 'user_label',
        user_name     => 'dongy', 
        read_comps    => 'HR',
    );

    SA_USER_ADMIN.SET_GROUPS (
        policy_name   => 'user_label',
        user_name     => 'dongy', 
        read_groups   => 'APAC',
    );

    SA_USER_ADMIN.SET_GROUPS (
        policy_name   => 'user_label',
        user_name     => 'dongy', 
        read_groups   => 'DIR',
    );

END;
/

BEGIN
    SA_USER_ADMIN.SET_USER_PRIVS(
        policy_name   => 'emp_r_label_policy',
        user_name     => 'company', 
        privileges    => 'FULL');
END;
/


END;
/
