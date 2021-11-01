BEGIN
    SA_USER_ADMIN.SET_USER_LABELS (
        policy_name       => 'test_policy',
        user_name         => 'company',
        max_read_label    => 'S::MGR',
        max_write_label   => 'S::MGR',
        min_write_label   => '',
        def_label         => 'S::MGR',
        row_label         => 'S::'
    );
END;
/

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