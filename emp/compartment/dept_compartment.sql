-- dept compartments for emp read label
BEGIN
    SA_COMPONENTS.CREATE_COMPARTMENT(
        policy_name     => 'emp_r_label',
        comp_num        => 30,
        short_name      => 'HR',
        long_name       => 'HUMAN_RESOURCE'
    );
END;
/

BEGIN
    SA_COMPONENTS.CREATE_COMPARTMENT(
        policy_name     => 'emp_r_label',
        comp_num        => 20,
        short_name      => 'FIN',
        long_name       => 'FINANCE'
    );
END;
/r

BEGIN
    SA_COMPONENTS.CREATE_COMPARTMENT(
        policy_name     => 'emp_r_label',
        comp_num        => 10,
        short_name      => 'ENG',
        long_name       => 'ENGINEERING'
    );
END;
/

-- dept compartments for emp write label
BEGIN
    SA_COMPONENTS.CREATE_COMPARTMENT(
        policy_name     => 'emp_w_label',
        comp_num        => 30,
        short_name      => 'HR',
        long_name       => 'HUMAN_RESOURCE'
    );
END;
/

BEGIN
    SA_COMPONENTS.CREATE_COMPARTMENT(
        policy_name     => 'emp_w_label',
        comp_num        => 20,
        short_name      => 'FIN',
        long_name       => 'FINANCE'
    );
END;
/

BEGIN
    SA_COMPONENTS.CREATE_COMPARTMENT(
        policy_name     => 'emp_w_label',
        comp_num        => 10,
        short_name      => 'ENG',
        long_name       => 'ENGINEERING'
    );
END;
/
