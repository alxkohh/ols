BEGIN
  SA_USER_ADMIN.APPLY_TABLE_POLICY (
    policy_name    => 'budget_r_label_policy',
    schema_name    => 'system', 
    table_name     => 'project_budgets',
    table_options  => 'READ_CONTROL',
    label_function => 'hr.gen_emp_label(:new.department_id,:new.salary)',
  );
  SA_USER_ADMIN.APPLY_TABLE_POLICY (
    policy_name    => 'budget_w_label_policy',
    schema_name    => 'system', 
    table_name     => 'project_budgets',
    table_options  => 'WRITE_CONTROL',
    label_function => 'hr.gen_emp_label(:new.department_id,:new.salary)',
  );
END;
/
