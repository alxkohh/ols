-- run as company

-- EMPLOYEES

CREATE OR REPLACE FUNCTION gen_emp_w_label(new_emp_name VARCHAR2, position VARCHAR2, dept VARCHAR2, region VARCHAR2)
RETURN lbacsys.lbac_label AS
emp_r_label VARCHAR(20);
emp_w_label VARCHAR(20);
sal_rw_label VARCHAR(20);
dummy_label NUMBER(10);
PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN
    emp_r_label := 'U::' || position || ',' || region;
    emp_w_label := 'U:HR:' || position || ',' || region;
    sal_rw_label := 'C:HR:' || position || ',' || region;

    SELECT CHAR_TO_LABEL('emp_w_label_policy', emp_w_label) INTO dummy_label FROM dual;
    SELECT CHAR_TO_LABEL('emp_r_label_policy', emp_r_label) INTO dummy_label FROM dual;
    SELECT CHAR_TO_LABEL('sal_rw_label_policy', sal_rw_label) INTO dummy_label FROM dual;

    UPDATE company.employees SET emp_r_label = CHAR_TO_LABEL('emp_r_label_policy', emp_r_label) WHERE emp_name = new_emp_name;
    UPDATE company.salary SET sal_rw_label = CHAR_TO_LABEL('sal_rw_label_policy', sal_rw_label) WHERE emp_name = new_emp_name;
    COMMIT;
    RETURN to_lbac_data_label('emp_w_label_policy', emp_w_label);
END;
/

GRANT EXECUTE ON gen_emp_w_label TO PUBLIC;

CREATE OR REPLACE FUNCTION gen_emp_r_label(position VARCHAR2, region VARCHAR2)
RETURN NUMBER AS
emp_r_label VARCHAR(20);
label NUMBER(10);
BEGIN
    emp_r_label := 'U::' || position || ',' || region;
    SELECT CHAR_TO_LABEL('emp_r_label_policy', emp_r_label) INTO label FROM dual;
    RETURN label;
END;
/

GRANT EXECUTE ON gen_emp_r_label TO PUBLIC;

-- SALARY

CREATE OR REPLACE FUNCTION gen_sal_rw_label(new_emp_name VARCHAR2)
RETURN lbacsys.lbac_label AS
employee employees%ROWTYPE;
sal_rw_label VARCHAR(20);
dummy_label NUMBER(10);
BEGIN
    SELECT * INTO employee FROM employees WHERE emp_name = new_emp_name;
    sal_rw_label := 'C:HR:' || employee.position || ',' || employee.region;
    SELECT CHAR_TO_LABEL('sal_rw_label_policy', sal_rw_label) INTO dummy_label FROM dual;
    RETURN to_lbac_data_label('sal_rw_label_policy', sal_rw_label);
END;
/

GRANT EXECUTE ON gen_sal_rw_label TO PUBLIC;
