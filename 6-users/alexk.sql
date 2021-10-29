DROP USER alexk;
CREATE USER alexk IDENTIFIED BY alexk0;
GRANT CREATE SESSION TO alexk;

-- C, Finance, Mgr, EMEA

BEGIN
    SA_USER_ADMIN.SET_LEVELS (
        policy_name   => 'emp_r_label_policy',
        user_name     => 'alexk', 
        max_level     => 'C',
        min_level     => 'U',
        def_level     => 'C'
    );
    SA_USER_ADMIN.SET_LEVELS (
        policy_name   => 'emp_w_label_policy',
        user_name     => 'alexk', 
        max_level     => 'C',
        min_level     => 'U',
        def_level     => 'C',
        row_level     => 'U'
    );
    SA_USER_ADMIN.SET_LEVELS (
        policy_name   => 'sal_rw_label_policy',
        user_name     => 'alexk', 
        max_level     => 'C',
        min_level     => 'U',
        def_level     => 'C',
        row_level     => 'U'
    );


    SA_USER_ADMIN.SET_COMPARTMENTS (
        policy_name   => 'emp_r_label_policy',
        user_name     => 'alexk', 
        read_comps    => 'FIN',
        write_comps   => 'FIN',
        def_comps     => 'FIN',
        row_comps     => 'FIN'
    );
    SA_USER_ADMIN.SET_COMPARTMENTS (
        policy_name   => 'emp_w_label_policy',
        user_name     => 'alexk', 
        read_comps    => 'FIN',
        write_comps   => 'FIN',
        def_comps     => 'FIN',
        row_comps     => 'FIN'
    );
    SA_USER_ADMIN.SET_COMPARTMENTS (
        policy_name   => 'sal_rw_label_policy',
        user_name     => 'alexk', 
        read_comps    => 'FIN',
        write_comps   => 'FIN',
        def_comps     => 'FIN',
        row_comps     => 'FIN'
    );

    SA_USER_ADMIN.SET_GROUPS (
        policy_name   => 'emp_r_label_policy',
        user_name     => 'alexk', 
        read_groups   => 'EMEA,MGR',
        write_groups  => 'EMEA,MGR',
        def_groups    => 'EMEA,MGR',
        row_groups    => ''
    );
    SA_USER_ADMIN.SET_GROUPS (
        policy_name   => 'emp_w_label_policy',
        user_name     => 'alexk', 
        read_groups   => 'EMEA,MGR',
        write_groups  => 'EMEA,MGR',
        def_groups    => 'EMEA,MGR',
        row_groups    => ''
    );
    SA_USER_ADMIN.SET_GROUPS (
        policy_name   => 'sal_rw_label_policy',
        user_name     => 'alexk', 
        read_groups   => 'EMEA,MGR',
        write_groups  => 'EMEA,MGR',
        def_groups    => 'EMEA,MGR',
        row_groups    => ''
    );
END;
/
