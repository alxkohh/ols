BEGIN    
    SA_USER_ADMIN.SET_USER_LABELS (
        policy_name       => 'test2_policy',
        user_name         => 'joycey',
        max_read_label    => 'U:ENG,FIN',
        max_write_label   => 'U:ENG,FIN',
        min_write_label   => 'U',
        def_label         => 'U:ENG,FIN'
    );
END;
/