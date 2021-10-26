CREATE OR REPLACE FUNCTION gen_emp_r_label
RETURN VARCHAR
IS
label VARCHAR
BEGIN
label := 'U';
RETURN label
END;
/

CREATE OR REPLACE gen_emp_w_label
RETURN VARCHAR
IS
label VARCHAR
BEGIN
label := 'U';
RETURN label
END;
/

BEGIN
  SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
    policy_name    => 'emp_r_label_policy',
    schema_name    => 'sys', 
    table_name     => 'employees',
    table_options  => 'READ_CONTROL',
    label_function => 'sys.gen_emp_r_label()',
  );
  SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
    policy_name    => 'emp_w_label_policy',
    schema_name    => 'sys', 
    table_name     => 'employees',
    table_options  => 'WRITE_CONTROL',
    label_function => 'sys.gen_emp_w_label()',
  );
END;
/
