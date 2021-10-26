-- eng type compartments for proj budget r/w label
BEGIN
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'budget_r_label',
        comp_num    => 70,
        short_name  => 'FE',
        long_name   => 'FRONT_END'
    );
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'budget_r_label',
        comp_num    => 60,
        short_name  => 'BE',
        long_name   => 'BACK_END'
    );
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'budget_r_label_policy',
        comp_num    => 50,
        short_name  => 'SEC',
        long_name   => 'SECURITY'
    );
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'budget_r_label_policy',
        comp_num    => 40,
        short_name  => 'DEV',
        long_name   => 'DEV_OPS'
    );
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'budget_w_label_policy',
        comp_num    => 70,
        short_name  => 'FE',
        long_name   => 'FRONT_END'
    );
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'budget_w_label_policy',
        comp_num    => 60,
        short_name  => 'BE',
        long_name   => 'BACK_END'
    );
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'budget_w_label_policy',
        comp_num    => 50,
        short_name  => 'SEC',
        long_name   => 'SECURITY'
    );
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'budget_w_label_policy',
        comp_num    => 40,
        short_name  => 'DEV',
        long_name   => 'DEV_OPS'
    );
END;
/
