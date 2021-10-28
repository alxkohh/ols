-- proj r/w label
BEGIN
    SA_SYSDBA.CREATE_POLICY(
        policy_name     => 'proj_r_label_policy',
        column_name     => 'proj_r_label',
        default_options => 'READ_CONTROL, LABEL_DEFAULT'
    );
    SA_SYSDBA.CREATE_POLICY(
        policy_name     => 'proj_w_label_policy',
        column_name     => 'proj_w_label',
        default_options => 'WRITE_CONTROL'
    );
END;
/

-- LEVEL 

-- levels for proj r/w labels
BEGIN
    SA_COMPONENTS.CREATE_LEVEL (
        policy_name => 'proj_r_label_policy',
        level_num   => 30,
        short_name  => 'S',
        long_name   => 'SECRET'
    );
    SA_COMPONENTS.CREATE_LEVEL (
        policy_name => 'proj_r_label_policy',
        level_num   => 20,
        short_name  => 'C',
        long_name   => 'CLASSIFIED'
    );
    SA_COMPONENTS.CREATE_LEVEL (
        policy_name => 'proj_r_label_policy',
        level_num   => 10,
        short_name  => 'U',
        long_name   => 'UNCLASSIFIED'
    );
    SA_COMPONENTS.CREATE_LEVEL (
        policy_name => 'proj_w_label_policy',
        level_num   => 30,
        short_name  => 'S',
        long_name   => 'SECRET'
    );
    SA_COMPONENTS.CREATE_LEVEL (
        policy_name => 'proj_w_label_policy',
        level_num   => 20,
        short_name  => 'C',
        long_name   => 'CLASSIFIED'
    );
    SA_COMPONENTS.CREATE_LEVEL (
        policy_name => 'proj_w_label_policy',
        level_num   => 10,
        short_name  => 'U',
        long_name   => 'UNCLASSIFIED'
    );
END;
/

-- COMPARTMENT (ENG TYPE)
-- eng type compartments for proj r/w label
BEGIN
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'proj_r_label_policy',
        comp_num    => 70,
        short_name  => 'FE',
        long_name   => 'FRONT_END'
    );
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'proj_r_label_policy',
        comp_num    => 60,
        short_name  => 'BE',
        long_name   => 'BACK_END'
    );
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'proj_r_label_policy',
        comp_num    => 50,
        short_name  => 'SEC',
        long_name   => 'SECURITY'
    );
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'proj_r_label_policy',
        comp_num    => 40,
        short_name  => 'DEV',
        long_name   => 'DEV_OPS'
    );
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'proj_w_label_policy',
        comp_num    => 70,
        short_name  => 'FE',
        long_name   => 'FRONT_END'
    );
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'proj_w_label_policy',
        comp_num    => 60,
        short_name  => 'BE',
        long_name   => 'BACK_END'
    );
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'proj_w_label_policy',
        comp_num    => 50,
        short_name  => 'SEC',
        long_name   => 'SECURITY'
    );
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'proj_w_label_policy',
        comp_num    => 40,
        short_name  => 'DEV',
        long_name   => 'DEV_OPS'
    );
END;
/

-- GROUP (POSITION)

-- position groups for proj r/w label
BEGIN
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'proj_r_label_policy',
        group_num   => 1000,
        short_name  => 'DIR',
        long_name   => 'DIRECTOR'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'proj_r_label_policy',
        group_num   => 1100,
        short_name  => 'MGR',
        long_name   => 'MANAGER',
        parent_name => 'DIR'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'proj_r_label_policy',
        group_num   => 1110,
        short_name  => 'EMP',
        long_name   => 'EMPLOYEE',
        parent_name => 'MGR'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'proj_w_label_policy',
        group_num   => 1000,
        short_name  => 'DIR',
        long_name   => 'DIRECTOR'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'proj_w_label_policy',
        group_num   => 1100,
        short_name  => 'MGR',
        long_name   => 'MANAGER',
        parent_name => 'DIR'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'proj_w_label_policy',
        group_num   => 1110,
        short_name  => 'EMP',
        long_name   => 'EMPLOYEE',
        parent_name => 'MGR'
    );
END;
/

-- GROUP (REGION)

-- region groups for proj r/w label
BEGIN
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'proj_r_label_policy',
        group_num   => 2000,
        short_name  => 'GLOBAL',
        long_name   => 'GLOBAL'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'proj_r_label_policy',
        group_num   => 2100,
        short_name  => 'APAC',
        long_name   => 'APAC',
        parent_name => 'GLOBAL'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'proj_r_label_policy',
        group_num   => 2110,
        short_name  => 'SG',
        long_name   => 'SINGAPORE',
        parent_name => 'APAC'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'proj_r_label_policy',
        group_num   => 2120,
        short_name  => 'HK',
        long_name   => 'HONG_KONG',
        parent_name => 'APAC'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'proj_r_label_policy',
        group_num   => 2200,
        short_name  => 'EMEA',
        long_name   => 'EMEA',
        parent_name => 'GLOBAL'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'proj_r_label_policy',
        group_num   => 2210,
        short_name  => 'LON',
        long_name   => 'LONDON',
        parent_name => 'EMEA'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'proj_r_label_policy',
        group_num   => 2220,
        short_name  => 'PAR',
        long_name   => 'PARIS',
        parent_name => 'EMEA'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'proj_r_label_policy',
        group_num   => 2300,
        short_name  => 'AMER',
        long_name   => 'AMER',
        parent_name => 'GLOBAL'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'proj_r_label_policy',
        group_num   => 2310,
        short_name  => 'NY',
        long_name   => 'NEW_YORK',
        parent_name => 'AMER'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'proj_r_label_policy',
        group_num   => 2320,
        short_name  => 'SF',
        long_name   => 'SAN_FRANCISCO',
        parent_name => 'AMER'
    );

    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'proj_w_label_policy',
        group_num   => 2000,
        short_name  => 'GLOBAL',
        long_name   => 'GLOBAL'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'proj_w_label_policy',
        group_num   => 2100,
        short_name  => 'APAC',
        long_name   => 'APAC',
        parent_name => 'GLOBAL'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'proj_w_label_policy',
        group_num   => 2110,
        short_name  => 'SG',
        long_name   => 'SINGAPORE',
        parent_name => 'APAC'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'proj_w_label_policy',
        group_num   => 2120,
        short_name  => 'HK',
        long_name   => 'HONG_KONG',
        parent_name => 'APAC'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'proj_w_label_policy',
        group_num   => 2200,
        short_name  => 'EMEA',
        long_name   => 'EMEA',
        parent_name => 'GLOBAL'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'proj_w_label_policy',
        group_num   => 2210,
        short_name  => 'LON',
        long_name   => 'LONDON',
        parent_name => 'EMEA'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'proj_w_label_policy',
        group_num   => 2220,
        short_name  => 'PAR',
        long_name   => 'PARIS',
        parent_name => 'EMEA'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'proj_w_label_policy',
        group_num   => 2300,
        short_name  => 'AMER',
        long_name   => 'AMER',
        parent_name => 'GLOBAL'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'proj_w_label_policy',
        group_num   => 2310,
        short_name  => 'NY',
        long_name   => 'NEW_YORK',
        parent_name => 'AMER'
    );
    SA_COMPONENTS.CREATE_GROUP (
        policy_name => 'proj_w_label_policy',
        group_num   => 2320,
        short_name  => 'SF',
        long_name   => 'SAN_FRANCISCO',
        parent_name => 'AMER'
    );
END;
/