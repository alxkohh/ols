-- engr type compartments for proj r/w label
BEGIN
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'proj_r_label',
        comp_num    => 40,
        short_name  => 'FE',
        long_name   => 'FRONTEND'
    );
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'proj_r_label',
        comp_num    => 30,
        short_name  => 'BE',
        long_name   => 'BACKEND'
    );
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'proj_r_label',
        comp_num    => 20,
        short_name  => 'SEC',
        long_name   => 'SECURITY'
    );
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'proj_r_label',
        comp_num    => 10,
        short_name  => 'DOPS',
        long_name   => 'DEVOPS'
    );
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'proj_w_label',
        comp_num    => 40,
        short_name  => 'FE',
        long_name   => 'FRONTEND'
    );
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'proj_w_label',
        comp_num    => 30,
        short_name  => 'BE',
        long_name   => 'BACKEND'
    );
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'proj_w_label',
        comp_num    => 20,
        short_name  => 'SEC',
        long_name   => 'SECURITY'
    );
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'proj_w_label',
        comp_num    => 10,
        short_name  => 'DOPS',
        long_name   => 'DEVOPS'
    );
END;
/
