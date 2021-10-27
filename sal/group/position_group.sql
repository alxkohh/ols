-- position groups for sal all label
BEGIN
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'sal_all_label_policy',
        group_num   => 1000,
        short_name  => 'DIR',
        long_name   => 'DIRECTOR'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'sal_all_label_policy',
        group_num   => 1100,
        short_name  => 'MGR',
        long_name   => 'MANAGER',
        parent_name => 'DIR'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'sal_all_label_policy',
        group_num   => 1110,
        short_name  => 'EMP',
        long_name   => 'EMPLOYEE',
        parent_name => 'MGR'
    );
END;
/
