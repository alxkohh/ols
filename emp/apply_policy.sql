-- run as company
CREATE OR REPLACE FUNCTION emp_update_label(new_emp_name VARCHAR2, position VARCHAR2, dept VARCHAR2, region VARCHAR2)
RETURN lbacsys.lbac_label AS
emp_r_label VARCHAR(20);
emp_w_label VARCHAR(20);
sal_all_label VARCHAR(20);
BEGIN
  emp_r_label := 'U:' || dept || ':' || position || ',' || region;
  emp_w_label := 'U:HR:' || position || ',' || region;
  sal_all_label := 'C:HR' || position || ',' || region;

  UPDATE company.employees SET emp_r_label = CHAR_TO_LABEL('emp_r_label_policy', emp_r_label) WHERE emp_name = new_emp_name;
  UPDATE company.salary SET sal_all_label = CHAR_TO_LABEL('sal_all_label_policy', sal_all_label) WHERE emp_name = new_emp_name;
  RETURN to_lbac_data_label('emp_w_label_policy', emp_w_label);
END;
/

-- run as sys
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
    table_options  => 'READ_CONTROL'
  );
  SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
    policy_name    => 'emp_w_label_policy',
    schema_name    => 'company', 
    table_name     => 'employees',
    table_options  => 'WRITE_CONTROL',
    label_function => company.emp_update_label(:new.emp_name, :new.position, :new.department, :new.region)
  );
END;
/
