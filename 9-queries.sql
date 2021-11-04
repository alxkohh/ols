-- select all

SELECT emp_name, label_to_char(emp_label) FROM company.employees;
SELECT emp_name, label_to_char(sal_label) FROM company.salary;
SELECT proj_name, label_to_char(proj_label) FROM company.projects;
SELECT proj_name, label_to_char(budget_label) FROM company.project_budgets;

-- employees

-- query 1: dir, apac
-- query 2: emp, global
-- query 3: mgr, sg

-- salary

-- query 1: not HR
-- query 2: HR, but only U
-- query 3: HR, dir, apac
-- query 4: HR, emp, global

-- combined

-- query 5: update employee region from SG to HK

DELETE FROM salary WHERE emp_name = 'joycey';
DELETE FROM employees WHERE emp_name = 'joycey';
INSERT INTO employees (emp_name, phone, position, dept, region) VALUES ('joycey', '91234567', 'EMP', 'ENG', 'SG');
INSERT INTO salary (emp_name, salary) VALUES ('joycey', 50000);

-- show original labels
SELECT emp_name, label_to_char(emp_label) FROM company.employees WHERE emp_name = 'joycey';
SELECT emp_name, label_to_char(sal_label) FROM company.salary WHERE emp_name = 'joycey';

-- update and show changed label region
UPDATE employees SET region = 'HK' WHERE emp_name = 'joycey';
SELECT emp_name, label_to_char(emp_label) FROM company.employees WHERE emp_name = 'joycey';
SELECT emp_name, label_to_char(sal_label) FROM company.salary WHERE emp_name = 'joycey';

-- query 6: update employee position from DIR to EMP

-- projects

-- query 1: U:ENG,FE:EMP,APAC
-- query 2: S:ENG,BE:DIR,APAC

-- query 3: multi-compartment

-- insert a multi-compartment project
-- query 3a: user with only one compartment cannot see project
-- query 3b: user with both compartments can see that project

