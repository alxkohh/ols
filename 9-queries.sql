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

-- manually need to insert an employee

INSERT INTO employees (emp_name, phone, position, dept, region) VALUES ('joycey', '91234567', 'EMP', 'ENG', 'SG');
INSERT INTO salary (emp_name, salary) VALUES ('joycey', 50000);
SELECT emp_name, label_to_char(emp_label) FROM company.employees WHERE emp_name = 'joycey';
SELECT emp_name, label_to_char(sal_label) FROM company.salary WHERE emp_name = 'joycey';

UPDATE salary SET salary = 55000 WHERE emp_name  = 'joycey';
SELECT emp_name, label_to_char(sal_label) FROM company.salary WHERE emp_name = 'joycey';
-- Updating salary does not change label

SELECT emp_name, label_to_char(emp_label) FROM company.employees WHERE emp_name = 'joycey';
UPDATE employees SET region = 'HK' WHERE emp_name = 'joycey';
SELECT emp_name, label_to_char(emp_label) FROM company.employees WHERE emp_name = 'joycey';
-- Emp label changed region
SELECT emp_name, label_to_char(sal_label) FROM company.salary WHERE emp_name = 'joycey';
-- Sal label changed region

-- query 5: update position of employee from DIR to EMP
-- query 5a: emp table should have labels changed
-- query 5b: salaray table should have labels changed

-- query 6: update region of employee from HK to GLOBAL
-- query 6a: emp table should have labels changed
-- query 6b: salaray table should have labels changed

-- projects

-- manually need to insert multi-compartment projects