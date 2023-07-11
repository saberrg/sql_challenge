CREATE TABLE departments (
  dept_no CHAR(4) NOT NULL PRIMARY KEY,
  dept_name VARCHAR(255) NOT NULL
);

CREATE TABLE dept_emp (
  emp_no INT NOT NULL,
  dept_no CHAR(4) NOT NULL,
  PRIMARY KEY (emp_no, dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

CREATE TABLE dept_manager (
  dept_no CHAR(4) NOT NULL,
  emp_no INT NOT NULL,
  PRIMARY KEY (dept_no, emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

CREATE TABLE employees (
  emp_no INT NOT NULL PRIMARY KEY,
  emp_title_id VARCHAR(10) NOT NULL,
  birth_date DATE NOT NULL,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  sex CHAR(1) NOT NULL,
  hire_date DATE NOT NULL,
  FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);

CREATE TABLE salaries (
  emp_no INT NOT NULL PRIMARY KEY,
  salary FLOAT NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

CREATE TABLE titles (
  title_id VARCHAR(10) NOT NULL PRIMARY KEY,
  title VARCHAR(255) NOT NULL
);
