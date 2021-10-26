BEGIN
  SA_USER_ADMIN.APPLY_TABLE_POLICY (
    policy_name    => 'sal_r_label_policy',
    schema_name    => 'system', 
    table_name     => 'salary',
    table_options  => 'READ_CONTROL',
    label_function => 'hr.gen_emp_label(:new.department_id,:new.salary)',
  );
  SA_USER_ADMIN.APPLY_TABLE_POLICY (
    policy_name    => 'sal_w_label_policy',
    schema_name    => 'system', 
    table_name     => 'salary',
    table_options  => 'WRITE_CONTROL',
    label_function => 'hr.gen_emp_label(:new.department_id,:new.salary)',
  );
END;
/
