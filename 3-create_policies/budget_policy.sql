-- CREATE BUDGET POLICY, RUN AS sys

BEGIN
    SA_SYSDBA.DROP_POLICY(
        policy_name     => 'budget_policy',
        drop_column     => TRUE
    );
END;
/

BEGIN
    SA_SYSDBA.CREATE_POLICY(
        policy_name     => 'budget_policy',
        column_name     => 'budget_label',
        default_options => 'ALL_CONTROL'
    );
END;
/

-- LEVEL (CLASSIFICATION)

BEGIN
    SA_COMPONENTS.CREATE_LEVEL (
        policy_name => 'budget_policy',
        level_num   => 30,
        short_name  => 'S',
        long_name   => 'SECRET'
    );
    SA_COMPONENTS.CREATE_LEVEL (
        policy_name => 'budget_policy',
        level_num   => 20,
        short_name  => 'C',
        long_name   => 'CLASSIFIED'
    );
    SA_COMPONENTS.CREATE_LEVEL (
        policy_name => 'budget_policy',
        level_num   => 10,
        short_name  => 'U',
        long_name   => 'UNCLASSIFIED'
    );
END;
/

-- COMPARTMENT (ENG TYPE)

BEGIN
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'budget_policy',
        comp_num    => 70,
        short_name  => 'FE',
        long_name   => 'FRONT_END'
    );
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'budget_policy',
        comp_num    => 60,
        short_name  => 'BE',
        long_name   => 'BACK_END'
    );
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'budget_policy',
        comp_num    => 50,
        short_name  => 'SEC',
        long_name   => 'SECURITY'
    );
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'budget_policy',
        comp_num    => 40,
        short_name  => 'DEV',
        long_name   => 'DEV_OPS'
    );
END;
/

-- GROUP (REGION)

BEGIN
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'budget_policy',
        group_num   => 2000,
        short_name  => 'GLOBAL',
        long_name   => 'GLOBAL'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'budget_policy',
        group_num   => 2100,
        short_name  => 'APAC',
        long_name   => 'APAC',
        parent_name => 'GLOBAL'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'budget_policy',
        group_num   => 2110,
        short_name  => 'SG',
        long_name   => 'SINGAPORE',
        parent_name => 'APAC'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'budget_policy',
        group_num   => 2120,
        short_name  => 'HK',
        long_name   => 'HONG_KONG',
        parent_name => 'APAC'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'budget_policy',
        group_num   => 2200,
        short_name  => 'EMEA',
        long_name   => 'EMEA',
        parent_name => 'GLOBAL'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'budget_policy',
        group_num   => 2210,
        short_name  => 'LON',
        long_name   => 'LONDON',
        parent_name => 'EMEA'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'budget_policy',
        group_num   => 2220,
        short_name  => 'PAR',
        long_name   => 'PARIS',
        parent_name => 'EMEA'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'budget_policy',
        group_num   => 2300,
        short_name  => 'AMER',
        long_name   => 'AMER',
        parent_name => 'GLOBAL'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'budget_policy',
        group_num   => 2310,
        short_name  => 'NY',
        long_name   => 'NEW_YORK',
        parent_name => 'AMER'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'budget_policy',
        group_num   => 2320,
        short_name  => 'SF',
        long_name   => 'SAN_FRANCISCO',
        parent_name => 'AMER'
    );
END;
/
