-- CREATE EMP POLICY, RUN AS sys

BEGIN
    SA_SYSDBA.DROP_POLICY(
        policy_name     => 'sal_policy',
        drop_column     => TRUE
    );
END;
/

BEGIN
    SA_SYSDBA.CREATE_POLICY(
        policy_name     => 'sal_policy',
        column_name     => 'sal_label',
        default_options => 'ALL_CONTROL'
    );
END;
/

-- LEVEL (POSITION)

BEGIN
    SA_COMPONENTS.CREATE_LEVEL (
        policy_name => 'sal_policy',
        level_num   => 30,
        short_name  => 'DIR',
        long_name   => 'DIRECTOR'
    );
    SA_COMPONENTS.CREATE_LEVEL (
        policy_name => 'sal_policy',
        level_num   => 20,
        short_name  => 'MGR',
        long_name   => 'MANAGER'
    );
    SA_COMPONENTS.CREATE_LEVEL (
        policy_name => 'sal_policy',
        level_num   => 10,
        short_name  => 'EMP',
        long_name   => 'EMPLOYEE'
    );
END;
/

-- COMPARTMENT (DEPT)

BEGIN
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'sal_policy',
        comp_num    => 30,
        short_name  => 'HR',
        long_name   => 'HUMAN_RESOURCE'
    );
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'sal_policy',
        comp_num    => 20,
        short_name  => 'FIN',
        long_name   => 'FINANCE'
    );
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'sal_policy',
        comp_num    => 10,
        short_name  => 'ENG',
        long_name   => 'ENGINEERING'
    );
END;
/

-- GROUP (REGION)

BEGIN
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'sal_policy',
        group_num   => 2000,
        short_name  => 'GLOBAL',
        long_name   => 'GLOBAL'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'sal_policy',
        group_num   => 2100,
        short_name  => 'APAC',
        long_name   => 'APAC',
        parent_name => 'GLOBAL'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'sal_policy',
        group_num   => 2110,
        short_name  => 'SG',
        long_name   => 'SINGAPORE',
        parent_name => 'APAC'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'sal_policy',
        group_num   => 2120,
        short_name  => 'HK',
        long_name   => 'HONG_KONG',
        parent_name => 'APAC'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'sal_policy',
        group_num   => 2200,
        short_name  => 'EMEA',
        long_name   => 'EMEA',
        parent_name => 'GLOBAL'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'sal_policy',
        group_num   => 2210,
        short_name  => 'LON',
        long_name   => 'LONDON',
        parent_name => 'EMEA'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'sal_policy',
        group_num   => 2220,
        short_name  => 'PAR',
        long_name   => 'PARIS',
        parent_name => 'EMEA'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'sal_policy',
        group_num   => 2300,
        short_name  => 'AMER',
        long_name   => 'AMER',
        parent_name => 'GLOBAL'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'sal_policy',
        group_num   => 2310,
        short_name  => 'NY',
        long_name   => 'NEW_YORK',
        parent_name => 'AMER'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'sal_policy',
        group_num   => 2320,
        short_name  => 'SF',
        long_name   => 'SAN_FRANCISCO',
        parent_name => 'AMER'
    );
END;
/
