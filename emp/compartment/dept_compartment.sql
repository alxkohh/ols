-- dept compartments for emp r/w label
BEGIN
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'emp_r_label_policy',
        comp_num    => 30,
        short_name  => 'HR',
        long_name   => 'HUMAN_RESOURCE'
    );
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'emp_r_label_policy',
        comp_num    => 20,
        short_name  => 'FIN',
        long_name   => 'FINANCE'
    );
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'emp_r_label_policy',
        comp_num    => 10,
        short_name  => 'ENG',
        long_name   => 'ENGINEERING'
    );
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'emp_w_label_policy',
        comp_num    => 30,
        short_name  => 'HR',
        long_name   => 'HUMAN_RESOURCE'
    );
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'emp_w_label_policy',
        comp_num    => 20,
        short_name  => 'FIN',
        long_name   => 'FINANCE'
    );
    SA_COMPONENTS.CREATE_COMPARTMENT (
        policy_name => 'emp_w_label_policy',
        comp_num    => 10,
        short_name  => 'ENG',
        long_name   => 'ENGINEERING'
    );
END;
/