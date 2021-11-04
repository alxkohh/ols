-- code to manual insert data for query demo

-- select all

SELECT emp_name, label_to_char(emp_label) FROM company.employees;
SELECT emp_name, label_to_char(sal_label) FROM company.salary;
SELECT proj_name, label_to_char(proj_label) FROM company.projects;
SELECT proj_name, label_to_char(budget_label) FROM company.project_budgets;

-- employees

DELETE FROM company.salary WHERE emp_name = 'thomask';
DELETE FROM company.employees WHERE emp_name = 'thomask';
COMMIT;
INSERT INTO employees (emp_name, phone, position, dept, region) VALUES ('thomask', '91112222', 'EMP', 'ENG', 'SG');
INSERT INTO salary (emp_name, salary) VALUES ('thomask', 50000);
