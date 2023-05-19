create table titles (
title_id varchar(20) PRIMARY KEY,
title varchar(20));
	
create table employees (
emp_no INT NOT NULL PRIMARY KEY,
emp_title_id varchar(20),
birth_date varchar(20),
first_name varchar(20),
last_name varchar(20),
sex varchar(20),
hire_date varchar(20),
FOREIGN KEY (emp_title_id) references titles(title_id));
	
create table salary (
emp_no INT NOT NULL PRIMARY KEY,
salary INT,
FOREIGN KEY (emp_no) references employees(emp_no));

drop table if exists departments;

create table departments (
"dept_no" varchar(20) primary key,
dept_name varchar(20));
	
create table dept_employees (
emp_no INT NOT NULL,
dept_no varchar(20),
FOREIGN KEY (emp_no) references employees(emp_no));
	
create table dept_manager (
dept_no varchar(20),
emp_no int not null,
foreign key (emp_no) references employees(emp_no),
foreign key (dept_no) references departments("dept_no"));