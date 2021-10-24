CREATE TABLE employee(
    emp_name VARCHAR(30) PRIMARY KEY,
    phone VARCHAR(30),
    position VARCHAR(30),
    dept VARCHAR(30),
    region VARCHAR(30),
);

CREATE TABLE salary (
    emp_name VARCHAR(30) PRIMARY KEY,
    salary INT,
    PRIMARY KEY (emp_name),
    CONSTRAINT fk_emp_name FOREIGN KEY (emp_name) REFERENCES employee(emp_name)
);

CREATE TABLE project (
    proj_name VARCHAR(30) PRIMARY KEY,
    description VARCHAR(256),
    eng_type VARCHAR(30),
    region VARCHAR(30),
    deadline DATE,
);

CREATE TABLE project_budget (
  proj_name VARCHAR(30) PRIMARY KEY,
  budget INT,
  CONSTRAINT fk_proj_name FOREIGN KEY (proj_name) REFERENCES project(proj_name)
);

