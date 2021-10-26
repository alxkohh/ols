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
