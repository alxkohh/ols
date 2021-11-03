-- run as sys 

-- EMPLOYEES

BEGIN
    SA_POLICY_ADMIN.REMOVE_TABLE_POLICY('emp_r_label_policy', 'company', 'employees');
    SA_POLICY_ADMIN.REMOVE_TABLE_POLICY('emp_w_label_policy', 'company', 'employees');
END;
/

BEGIN
    SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
        policy_name    => 'emp_r_label_policy',
        schema_name    => 'company', 
        table_name     => 'employees',
        table_options  => 'READ_CONTROL',
        label_function => 'company.gen_emp_r_label(:new.position,:new.region)'
    );
    SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
        policy_name    => 'emp_w_label_policy',
        schema_name    => 'company', 
        table_name     => 'employees',
        table_options  => 'WRITE_CONTROL',
        label_function => 'company.gen_emp_w_label(:new.emp_name,:new.position,:new.dept,:new.region)'  
    );
END;
/

-- SALARY

BEGIN
    SA_POLICY_ADMIN.REMOVE_TABLE_POLICY('sal_rw_label_policy', 'company', 'salary');
END;
/

BEGIN
    SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
        policy_name    => 'sal_rw_label_policy',
        schema_name    => 'company',
        table_name     => 'salary',
        table_options  => 'READ_CONTROL, WRITE_CONTROL',
        label_function => 'company.gen_sal_rw_label(:new.emp_name)'
    );
END;
/

-- PROJECTS

BEGIN
    SA_POLICY_ADMIN.REMOVE_TABLE_POLICY('proj_r_label_policy', 'company', 'projects');
    SA_POLICY_ADMIN.REMOVE_TABLE_POLICY('proj_w_label_policy', 'company', 'projects');
END;
/

BEGIN
    SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
        policy_name    => 'proj_r_label_policy',
        schema_name    => 'company', 
        table_name     => 'projects',
        table_options  => 'READ_CONTROL',
        label_function => 'company.gen_proj_r_label(:new.classification, :new.eng_type, :new.region)'
    );
    SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
        policy_name    => 'proj_w_label_policy',
        schema_name    => 'company', 
        table_name     => 'projects',
        table_options  => 'WRITE_CONTROL',
        label_function => 'company.gen_proj_w_label(:new.proj_name,:new.classification,:new.eng_type,:new.region)'  
    );
END;
/

-- BUDGET

BEGIN
    SA_POLICY_ADMIN.REMOVE_TABLE_POLICY('budget_rw_label_policy', 'company', 'project_budgets');
END;
/

BEGIN
    SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
        policy_name    => 'budget_rw_label_policy',
        schema_name    => 'company',
        table_name     => 'project_budgets',
        table_options  => 'READ_CONTROL, WRITE_CONTROL',
        label_function => 'company.gen_budget_rw_label(:new.proj_name)'
    );
END;
/
