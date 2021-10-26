CREATE FUNCTION gen_emp_r_label()
RETURN VARCHAR
IS
label VARCHAR
BEGIN
label := 'U';
RETURN label
END;
/

CREATE FUNCTION gen_emp_w_label()
RETURN VARCHAR
IS
label VARCHAR
BEGIN
label := 'U';
RETURN label
END;
/

BEGIN
  SA_USER_ADMIN.APPLY_TABLE_POLICY (
    policy_name    => 'emp_r_label_policy',
    schema_name    => 'system', 
    table_name     => 'employees',
    table_options  => 'READ_CONTROL',
    label_function => 'system.gen_emp_r_label()',
  );
  SA_USER_ADMIN.APPLY_TABLE_POLICY (
    policy_name    => 'emp_w_label_policy',
    schema_name    => 'system', 
    table_name     => 'employees',
    table_options  => 'WRITE_CONTROL',
    label_function => 'system.gen_emp_w_label()',
  );
END;
/
