BEGIN
 SA_SYSDBA.CREATE_POLICY (
  policy_name      => 'emp_r_label',
  column_name      => 'r_label',
  default_options  => 'read_control');
END;
/

BEGIN
 SA_SYSDBA.CREATE_POLICY (
  policy_name      => 'emp_w_label',
  column_name      => 'w_label',
  default_options  => 'write_control');
END;
/
