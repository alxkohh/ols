DROP TABLE project_budgets;
DROP TABLE projects;
DROP TABLE salary;
DROP TABLE employees;

CREATE TABLE employees (
    emp_name VARCHAR(30) PRIMARY KEY,
    phone VARCHAR(8),
    position VARCHAR(30),
    dept VARCHAR(30),
    region VARCHAR(30)
);

CREATE TABLE salary (
    emp_name VARCHAR(30) PRIMARY KEY,
    salary INT,
    CONSTRAINT fk_emp_name FOREIGN KEY (emp_name) REFERENCES employees(emp_name)
);

CREATE TABLE projects (
    proj_name VARCHAR(30) PRIMARY KEY,
    description VARCHAR(256),
    eng_type VARCHAR(30),
    region VARCHAR(30),
);

CREATE TABLE project_budgets (
    proj_name VARCHAR(30) PRIMARY KEY,
    budget INT,
    CONSTRAINT fk_proj_name FOREIGN KEY (proj_name) REFERENCES projects(proj_name)
);
