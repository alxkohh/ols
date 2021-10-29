DROP USER dongy;
CREATE USER dongy IDENTIFIED BY dongy0;

-- maximum permissions

BEGIN
    SA_USER_ADMIN.SET_LEVELS (
        policy_name   => 'emp_r_label_policy',
        user_name     => 'dongy', 
        max_level     => 'S',
        min_level     => 'U',
        def_level     => 'S'
    );
    SA_USER_ADMIN.SET_LEVELS (
        policy_name   => 'emp_w_label_policy',
        user_name     => 'dongy', 
        max_level     => 'S',
        min_level     => 'U',
        def_level     => 'S',
        row_level     => 'U'
    );
    SA_USER_ADMIN.SET_LEVELS (
        policy_name   => 'sal_rw_label_policy',
        user_name     => 'dongy', 
        max_level     => 'S',
        min_level     => 'U',
        def_level     => 'S',
        row_level     => 'U'
    );


    SA_USER_ADMIN.SET_COMPARTMENTS (
        policy_name   => 'emp_r_label_policy',
        user_name     => 'dongy', 
        read_comps    => 'HR',
        write_comps   => 'HR',
        def_comps     => 'HR',
        row_comps     => 'HR'
    );
    SA_USER_ADMIN.SET_COMPARTMENTS (
        policy_name   => 'emp_w_label_policy',
        user_name     => 'dongy', 
        read_comps    => 'HR',
        write_comps   => 'HR',
        def_comps     => 'HR',
        row_comps     => 'HR'
    );
    SA_USER_ADMIN.SET_COMPARTMENTS (
        policy_name   => 'sal_rw_label_policy',
        user_name     => 'dongy', 
        read_comps    => 'HR',
        write_comps   => 'HR',
        def_comps     => 'HR',
        row_comps     => 'HR'
    );

    SA_USER_ADMIN.SET_GROUPS (
        policy_name   => 'emp_r_label_policy',
        user_name     => 'dongy', 
        read_groups   => 'GLOBAL,DIR',
        write_groups  => 'GLOBAL,DIR',
        def_groups    => 'GLOBAL,DIR',
        row_groups    => ''
    );
    SA_USER_ADMIN.SET_GROUPS (
        policy_name   => 'emp_w_label_policy',
        user_name     => 'dongy', 
        read_groups   => 'GLOBAL,DIR',
        write_groups  => 'GLOBAL,DIR',
        def_groups    => 'GLOBAL,DIR',
        row_groups    => ''
    );
    SA_USER_ADMIN.SET_GROUPS (
        policy_name   => 'sal_rw_label_policy',
        user_name     => 'dongy', 
        read_groups   => 'GLOBAL,DIR',
        write_groups  => 'GLOBAL,DIR',
        def_groups    => 'GLOBAL,DIR',
        row_groups    => ''
    );
END;
/
