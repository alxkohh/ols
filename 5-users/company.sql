-- maximum permissions

BEGIN
    SA_USER_ADMIN.SET_LEVELS (
        policy_name   => 'emp_r_label_policy',
        user_name     => 'company', 
        max_level     => 'S',
        min_level     => 'U',
        def_level     => 'S'
    );
    SA_USER_ADMIN.SET_LEVELS (
        policy_name   => 'emp_w_label_policy',
        user_name     => 'company', 
        max_level     => 'S',
        min_level     => 'U',
        def_level     => 'S',
        row_level     => 'U'
    );
    SA_USER_ADMIN.SET_LEVELS (
        policy_name   => 'sal_rw_label_policy',
        user_name     => 'company', 
        max_level     => 'S',
        min_level     => 'U',
        def_level     => 'S',
        row_level     => 'U'
    );


    SA_USER_ADMIN.SET_COMPARTMENTS (
        policy_name   => 'emp_r_label_policy',
        user_name     => 'company', 
        read_comps    => 'HR,FIN,ENG',
        write_comps   => 'HR,FIN,ENG',
        def_comps     => 'HR,FIN,ENG',
        row_comps     => ''
    );
    SA_USER_ADMIN.SET_COMPARTMENTS (
        policy_name   => 'emp_w_label_policy',
        user_name     => 'company', 
        read_comps    => 'HR,FIN,ENG',
        write_comps   => 'HR,FIN,ENG',
        def_comps     => 'HR,FIN,ENG',
        row_comps     => ''
    );
    SA_USER_ADMIN.SET_COMPARTMENTS (
        policy_name   => 'sal_rw_label_policy',
        user_name     => 'company', 
        read_comps    => 'HR,FIN,ENG',
        write_comps   => 'HR,FIN,ENG',
        def_comps     => 'HR,FIN,ENG',
        row_comps     => ''
    );

    SA_USER_ADMIN.SET_GROUPS (
        policy_name   => 'emp_r_label_policy',
        user_name     => 'company', 
        read_groups   => 'GLOBAL,DIR',
        write_groups  => 'GLOBAL,DIR',
        def_groups    => 'GLOBAL,DIR',
        row_groups    => ''
    );
    SA_USER_ADMIN.SET_GROUPS (
        policy_name   => 'emp_w_label_policy',
        user_name     => 'company', 
        read_groups   => 'GLOBAL,DIR',
        write_groups  => 'GLOBAL,DIR',
        def_groups    => 'GLOBAL,DIR',
        row_groups    => ''
    );
    SA_USER_ADMIN.SET_GROUPS (
        policy_name   => 'sal_rw_label_policy',
        user_name     => 'company', 
        read_groups   => 'GLOBAL,DIR',
        write_groups  => 'GLOBAL,DIR',
        def_groups    => 'GLOBAL,DIR',
        row_groups    => ''
    );

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
END;
/
