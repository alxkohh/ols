-- run as company
CREATE OR REPLACE FUNCTION gen_salary_label(new_emp_name VARCHAR2)
RETURN lbacsys.lbac_label AS
employee employees%ROWTYPE;
sal_rw_label VARCHAR(20);
dummy_label NUMBER(10);
BEGIN
    SELECT * INTO employee FROM employees WHERE emp_name = new_emp_name;
    sal_rw_label := 'C:HR:' || employee.position || ',' || employee.region;
    SELECT CHAR_TO_LABEL('sal_rw_label_policy', sal_rw_label) FROM dual;
    RETURN to_lbac_data_label('sal_rw_label_policy', sal_rw_label);
END;
/

GRANT EXECUTE ON gen_salary_label TO PUBLIC;

-- run as sys
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
        label_function => 'company.gen_salary_label(:new.emp_name)'
    );
END;
/
