-- select all

select emp_name, label_to_char(emp_r_label), label_to_char(emp_w_label) from company.employees;
select emp_name, label_to_char(sal_rw_label) from company.salary;
select proj_name, label_to_char(proj_r_label), label_to_char(proj_w_label) from company.projects;
select proj_name, label_to_char(budget_rw_label) from company.project_budgets;


-- employees

-- query 1: dir, apac
-- query 2: emp, global
-- query 3: mgr, sg

-- salary

-- query 1: not HR
-- query 2: HR, but only U
-- query 3: HR, dir, apac
-- query 4: HR, emp, global

-- manually need to insert multi-compartment projects

-- query 5: update position of employee from DIR to EMP
-- query 5a: emp table should have labels changed
-- query 5b: salaray table should have labels changed

-- query 6: update region of employee from HK to GLOBAL
-- query 6a: emp table should have labels changed
-- query 6b: salaray table should have labels changed

-- manually need to insert multi-compartment projects