-- run as company
CREATE OR REPLACE FUNCTION gen_salary_label(new_emp_name VARCHAR2)
RETURN lbacsys.lbac_label AS
employee employees%ROWTYPE;
sal_all_label VARCHAR(20);
BEGIN
  SELECT * INTO employee FROM employees WHERE emp_name = new_emp_name;
  sal_all_label := 'C:HR:' || :employee.position || ',' || :employee.region;
  RETURN to_lbac_data_label('sal_all_label_policy', sal_all_label);
END;
/

-- run as sys
BEGIN
  SA_POLICY_ADMIN.REMOVE_TABLE_POLICY('sal_all_label_policy', 'company', 'salary');
END;
/

BEGIN
  SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
    policy_name    => 'sal_all_label_policy',
    schema_name    => 'company',
    table_name     => 'salary',
    table_options  => 'READ_CONTROL, WRITE_CONTROL',
    label_function => 'company.gen_salary_label(:new.emp_name)'
  );
END;
/
