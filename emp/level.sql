-- levels for emp r/w label
BEGIN
    SA_COMPONENTS.CREATE_LEVEL (
        policy_name => 'emp_r_label_policy',
        level_num   => 30,
        short_name  => 'S',
        long_name   => 'SECRET'
    );
    SA_COMPONENTS.CREATE_LEVEL (
        policy_name => 'emp_r_label_policy',
        level_num   => 20,
        short_name  => 'C',
        long_name   => 'CLASSIFIED'
    );
    SA_COMPONENTS.CREATE_LEVEL (
        policy_name => 'emp_r_label_policy',
        level_num   => 10,
        short_name  => 'U',
        long_name   => 'UNCLASSIFIED'
    );
    SA_COMPONENTS.CREATE_LEVEL (
        policy_name => 'emp_w_label_policy',
        level_num   => 30,
        short_name  => 'S',
        long_name   => 'SECRET'
    );
    SA_COMPONENTS.CREATE_LEVEL (
        policy_name => 'emp_w_label_policy',
        level_num   => 20,
        short_name  => 'C',
        long_name   => 'CLASSIFIED'
    );
    SA_COMPONENTS.CREATE_LEVEL (
        policy_name => 'emp_w_label_policy',
        level_num   => 10,
        short_name  => 'U',
        long_name   => 'UNCLASSIFIED'
    );
END;
/
