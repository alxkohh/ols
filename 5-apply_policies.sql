-- run as sys 

BEGIN
    SA_POLICY_ADMIN.REMOVE_TABLE_POLICY('emp_policy', 'company', 'employees');
    SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
        policy_name    => 'emp_policy',
        schema_name    => 'company', 
        table_name     => 'employees',
        table_options  => 'READ_CONTROL, WRITE_CONTROL',
        label_function => 'company.gen_emp_label(:new.emp_name, :new.position, :new.dept, :new.region)'
    );
END;
/

BEGIN
    SA_POLICY_ADMIN.REMOVE_TABLE_POLICY('sal_policy', 'company', 'salary');
    SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
        policy_name    => 'sal_policy',
        schema_name    => 'company',
        table_name     => 'salary',
        table_options  => 'READ_CONTROL, WRITE_CONTROL',
        label_function => 'company.gen_sal_label(:new.emp_name)'
    );
END;
/

BEGIN
    SA_POLICY_ADMIN.REMOVE_TABLE_POLICY('proj_policy', 'company', 'projects');
    SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
        policy_name    => 'proj_policy',
        schema_name    => 'company', 
        table_name     => 'projects',
        table_options  => 'READ_CONTROL, WRITE_CONTROL',
        label_function => 'company.gen_proj_label(:new.proj_name, :new.classification, :new.eng_type, :new.region)'
    );
END;
/

BEGIN
    SA_POLICY_ADMIN.REMOVE_TABLE_POLICY('budget_policy', 'company', 'project_budgets');
    SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
        policy_name    => 'budget_policy',
        schema_name    => 'company',
        table_name     => 'project_budgets',
        table_options  => 'READ_CONTROL, WRITE_CONTROL',
        label_function => 'company.gen_budget_label(:new.proj_name)'
    );
END;
/
