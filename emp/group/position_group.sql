-- position groups for emp r/w label
BEGIN
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'emp_r_label',
        group_num   => 30,
        short_name  => 'DIR',
        long_name   => 'DIRECTOR'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'emp_r_label',
        group_num   => 20,
        short_name  => 'MGR',
        long_name   => 'MANAGER',
        parent_name => 'DIR'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'emp_r_label',
        group_num   => 10,
        short_name  => 'EMP',
        long_name   => 'EMPLOYEE',
        parent_name => 'MGR'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'emp_w_label',
        group_num   => 30,
        short_name  => 'DIR',
        long_name   => 'DIRECTOR'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'emp_w_label',
        group_num   => 20,
        short_name  => 'MGR',
        long_name   => 'MANAGER',
        parent_name => 'DIR'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'emp_w_label',
        group_num   => 10,
        short_name  => 'EMP',
        long_name   => 'EMPLOYEE',
        parent_name => 'MGR'
    );
END;
/
