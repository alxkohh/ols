-- position groups for emp read label
BEGIN
SA_COMPONENTS.CREATE_GROUP(
    policy_name => 'emp_r_label',
    group_num   => 30,
    short_name  => 'DIR',
    long_name   => 'DIRECTOR'
);
END;
/

BEGIN
    SA_COMPONENTS.CREATE_GROUP(
        policy_name => 'emp_r_label',
        group_num   => 20,
        short_name  => 'MGR',
        long_name   => 'MANAGER',
        parent_name => 'DIR'
    );
END;
/

BEGIN
SA_COMPONENTS.CREATE_GROUP(
    policy_name => 'emp_r_label',
    group_num   => 10,
    short_name  => 'EMP',
    long_name   => 'EMPLOYEE',
    parent_name => 'MGR');
END;
/
