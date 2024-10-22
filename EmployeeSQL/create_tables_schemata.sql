DROP TABLE IF EXISTS Department_Managers CASCADE;
DROP TABLE IF EXISTS Department_Employees CASCADE;
DROP TABLE IF EXISTS Salaries CASCADE;
DROP TABLE IF EXISTS Titles CASCADE;
DROP TABLE IF EXISTS Employees CASCADE;
DROP TABLE IF EXISTS Departments CASCADE;

CREATE TABLE departments (
    dept_no VARCHAR(10) PRIMARY KEY,
    dept_name VARCHAR(40)
);

CREATE TABLE titles (
    title_id VARCHAR(10) PRIMARY KEY,
    title VARCHAR(255)
);

CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(10),
    birth_date DATE,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    sex CHAR(1),
    hire_date DATE
);


CREATE TABLE dept_emp (
    emp_no INT,
    dept_no VARCHAR(10),
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(10),
    emp_no INT,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries (
    emp_no INT PRIMARY KEY,
    salary INT,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

