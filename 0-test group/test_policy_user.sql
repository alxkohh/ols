BEGIN
    SA_USER_ADMIN.SET_USER_LABELS (
        policy_name       => 'test_policy',
        user_name         => 'joycey',
        max_read_label    => 'U::DIR',
        max_write_label   => 'U::DIR',
        min_write_label   => '',
        def_label         => 'U::DIR',
        row_label         => 'U::'
    );
END;
/