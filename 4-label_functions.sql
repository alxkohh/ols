-- run as company

-- EMPLOYEES

CREATE OR REPLACE FUNCTION gen_emp_label(new_emp_name VARCHAR2, position VARCHAR2, dept VARCHAR2, region VARCHAR2)
RETURN lbacsys.lbac_label AS
label VARCHAR(20);
BEGIN
    label := position || ':' || dept || ':' || region;
    RETURN to_lbac_data_label('emp_policy', label);
END;
/

GRANT EXECUTE ON gen_emp_label TO PUBLIC;

-- SALARY

CREATE OR REPLACE FUNCTION gen_sal_label(new_emp_name VARCHAR2)
RETURN lbacsys.lbac_label AS
employee employees%ROWTYPE;
label VARCHAR(20);
BEGIN
    SELECT * INTO employee FROM employees WHERE emp_name = new_emp_name;
    label := employee.position || ':' || employee.dept || ':' || employee.region;
    RETURN to_lbac_data_label('sal_policy', label);
END;
/

GRANT EXECUTE ON gen_sal_label TO PUBLIC;

-- PROJECTS

CREATE OR REPLACE FUNCTION gen_proj_label(new_proj_name VARCHAR2, classification VARCHAR2, eng_type VARCHAR2, region VARCHAR2)
RETURN lbacsys.lbac_label AS
label VARCHAR(20);
BEGIN
    label := classification || ':' || eng_type || ':' || region;
    RETURN to_lbac_data_label('proj_policy', label);
END;
/

GRANT EXECUTE ON gen_proj_label TO PUBLIC;

-- BUDGET

CREATE OR REPLACE FUNCTION gen_budget_label(new_proj_name VARCHAR2)
RETURN lbacsys.lbac_label AS
project projects%ROWTYPE;
label VARCHAR(20);
BEGIN
    SELECT * INTO project FROM projects WHERE proj_name = new_proj_name;
    label := project.classification || ':' || project.eng_type || ':' || project.region;
    RETURN to_lbac_data_label('budget_policy', label);
END;
/

GRANT EXECUTE ON gen_budget_label TO PUBLIC;