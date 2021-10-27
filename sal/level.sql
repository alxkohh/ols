-- levels for sal all labels
BEGIN
    SA_COMPONENTS.CREATE_LEVEL (
        policy_name => 'sal_all_label_policy',
        level_num   => 30,
        short_name  => 'S',
        long_name   => 'SECRET'
    );
    SA_COMPONENTS.CREATE_LEVEL (
        policy_name => 'sal_all_label_policy',
        level_num   => 20,
        short_name  => 'C',
        long_name   => 'CLASSIFIED'
    );
    SA_COMPONENTS.CREATE_LEVEL (
        policy_name => 'sal_all_label_policy',
        level_num   => 10,
        short_name  => 'U',
        long_name   => 'UNCLASSIFIED'
    );
END;
/
