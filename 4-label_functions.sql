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
RETURN lbacsys.lbac_label AS
emp_r_label VARCHAR(20);
dummy_label NUMBER(10);
BEGIN
    emp_r_label := 'U::' || position || ',' || region;
    SELECT CHAR_TO_LABEL('emp_r_label_policy', emp_r_label) INTO dummy_label FROM dual;
    RETURN to_lbac_data_label('emp_r_label_policy', emp_r_label);
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

-- PROJECTS

CREATE OR REPLACE FUNCTION gen_proj_w_label(new_proj_name VARCHAR2, classification VARCHAR2, eng_type VARCHAR2, region VARCHAR2)
RETURN lbacsys.lbac_label AS
proj_r_label VARCHAR(20);
proj_w_label VARCHAR(20);
budget_rw_label VARCHAR(20);
dummy_label NUMBER(10);
PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN
    proj_r_label := classification || ':' || eng_type || ':' || region;
    proj_w_label := classification || ':' || eng_type || ':MGR,' || region;
    budget_rw_label := classification || ':' || eng_type || ':MGR,' || region;

    SELECT CHAR_TO_LABEL('proj_r_label_policy', proj_r_label) INTO dummy_label FROM dual;
    SELECT CHAR_TO_LABEL('proj_w_label_policy', proj_w_label) INTO dummy_label FROM dual;
    SELECT CHAR_TO_LABEL('budget_rw_label_policy', budget_rw_label) INTO dummy_label FROM dual;

    UPDATE company.projects SET proj_r_label = CHAR_TO_LABEL('proj_r_label_policy', proj_r_label) WHERE proj_name = new_proj_name;
    UPDATE company.project_budgets SET budget_rw_label = CHAR_TO_LABEL('budget_rw_label_policy', budget_rw_label) WHERE proj_name = new_proj_name;
    COMMIT;
    RETURN to_lbac_data_label('proj_w_label_policy', proj_w_label);
END;
/

GRANT EXECUTE ON gen_proj_w_label TO PUBLIC;

CREATE OR REPLACE FUNCTION gen_proj_r_label(classification VARCHAR2, eng_type VARCHAR2, region VARCHAR2)
RETURN lbacsys.lbac_label AS
proj_r_label VARCHAR(20);
dummy_label NUMBER(10);
BEGIN
    proj_r_label := classification || ':' || eng_type || ':' || region;
    SELECT CHAR_TO_LABEL('proj_r_label_policy', proj_r_label) INTO dummy_label FROM dual;
    RETURN to_lbac_data_label('proj_r_label_policy', proj_r_label);
END;
/

GRANT EXECUTE ON gen_proj_r_label TO PUBLIC;

-- BUDGET

CREATE OR REPLACE FUNCTION gen_budget_rw_label(new_proj_name VARCHAR2)
RETURN lbacsys.lbac_label AS
project projects%ROWTYPE;
budget_rw_label VARCHAR(20);
dummy_label NUMBER(10);
BEGIN
    SELECT * INTO project FROM projects WHERE proj_name = new_proj_name;
    budget_rw_label := project.classification || ':' || project.eng_type || ':MGR,' || project.region;
    SELECT CHAR_TO_LABEL('budget_rw_label_policy', budget_rw_label) INTO dummy_label FROM dual;
    RETURN to_lbac_data_label('budget_rw_label_policy', budget_rw_label);
END;
/

GRANT EXECUTE ON gen_budget_rw_label TO PUBLIC;
