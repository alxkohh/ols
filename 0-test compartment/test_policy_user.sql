BEGIN    
    SA_USER_ADMIN.SET_USER_LABELS (
        policy_name       => 'test2_policy',
        user_name         => 'joycey',
        max_read_label    => 'U:ENG',
        max_write_label   => 'U:ENG',
        min_write_label   => 'U',
        def_label         => 'U:ENG',
        row_label         => 'U:'
    );
END;
/