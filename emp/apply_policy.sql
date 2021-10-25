BEGIN
  SA_USER_ADMIN.APPLY_TABLE_POLICY (
    policy_name    => 'emp_r_label',
    schema_name    => 'system', 
    table_name     => 'employees',
    table_options  => 'READ_CONTROL',
    label_function => 'hr.gen_emp_label(:new.department_id,:new.salary)',
  );
  SA_USER_ADMIN.APPLY_TABLE_POLICY (
    policy_name    => 'emp_w_label',
    schema_name    => 'system', 
    table_name     => 'employees',
    table_options  => 'WRITE_CONTROL',
    label_function => 'hr.gen_emp_label(:new.department_id,:new.salary)',
  );
END;
/
