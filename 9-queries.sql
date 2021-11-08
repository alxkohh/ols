-- code to manual insert data for query demo

-- select all

SELECT emp_name, label_to_char(emp_label) FROM company.employees;
SELECT emp_name, label_to_char(sal_label) FROM company.salary;
SELECT proj_name, label_to_char(proj_label) FROM company.projects;
SELECT proj_name, label_to_char(budget_label) FROM company.project_budgets;