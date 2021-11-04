-- run as company

-- EMPLOYEES

CREATE OR REPLACE FUNCTION gen_emp_label(new_emp_name VARCHAR2, position VARCHAR2, dept VARCHAR2, region VARCHAR2)
RETURN lbacsys.lbac_label AS
emp_label VARCHAR(20);
new_sal_label VARCHAR(20);
PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN
    emp_label := 'U:' || dept || ':' || position || ',' || region;
    new_sal_label := 'C:' || dept || ':' || position || ',' || region;
    UPDATE salary SET sal_label = CHAR_TO_LABEL('sal_policy', new_sal_label) WHERE emp_name = new_emp_name;
    COMMIT;
    RETURN to_lbac_data_label('emp_policy', emp_label);
END;
/

GRANT EXECUTE ON gen_emp_label TO PUBLIC;

-- SALARY

CREATE OR REPLACE FUNCTION gen_sal_label(new_emp_name VARCHAR2)
RETURN NUMBER AS
employee employees%ROWTYPE;
sal_label VARCHAR(20);
BEGIN
    SELECT * INTO employee FROM employees WHERE emp_name = new_emp_name;
    sal_label := 'C:' || employee.dept || ':' || employee.position || ',' || employee.region;
    RETURN CHAR_TO_LABEL('sal_policy', sal_label);
END;
/

GRANT EXECUTE ON gen_sal_label TO PUBLIC;

-- PROJECTS

CREATE OR REPLACE FUNCTION gen_proj_label(new_proj_name VARCHAR2, classification VARCHAR2, eng_type VARCHAR2, region VARCHAR2)
RETURN lbacsys.lbac_label AS
proj_label VARCHAR(20);
new_budget_label VARCHAR(20);
PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN
    proj_label := classification || ':ENG,' || eng_type || ':' || region;
    new_budget_label := classification || ':ENG,' || eng_type || ':' || region;
    UPDATE project_budgets SET budget_label = new_budget_label WHERE proj_name = new_proj_name;
    COMMIT;
    RETURN to_lbac_data_label('proj_policy', proj_label);
END;
/

GRANT EXECUTE ON gen_proj_label TO PUBLIC;

-- BUDGET

CREATE OR REPLACE FUNCTION gen_budget_label(new_proj_name VARCHAR2)
RETURN NUMBER AS
project projects%ROWTYPE;
budget_label VARCHAR(20);
BEGIN
    SELECT * INTO project FROM projects WHERE proj_name = new_proj_name;
    budget_label := project.classification || ':ENG,' || project.eng_type || ':MGR,' || project.region;
    RETURN CHAR_TO_LABEL('budget_policy', budget_label);
END;
/

GRANT EXECUTE ON gen_budget_label TO PUBLIC;