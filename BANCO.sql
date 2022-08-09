CREATE DATABASE BANCO;

USE BANCO;

CREATE TABLE employees (
	emp_no INT(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    birth_date DATE,
    first_name VARCHAR(14),
    last_name VARCHAR(16),
    gender ENUM('M','F'),
    hire_date DATE
);

CREATE TABLE dept_manager (
	dept_no CHAR(4),
    emp_no INT(10),
    from_date DATE,
    to_date DATE
);

CREATE TABLE departments (
	dept_no CHAR(4) PRIMARY KEY NOT NULL,
    dept_name VARCHAR(40)
);



CREATE TABLE dept_emp (
	emp_no INT(10),
    dept_no CHAR(4),
    from_date DATE,
    to_date DATE
);

CREATE TABLE salaries (
	emp_no INT(10),
    salary INT(11),
    from_date DATE,
    to_date DATE
);


CREATE TABLE titles (
	emp_no INT(10),
    title VARCHAR(50),
    from_date DATE,
    to_date DATE
);

ALTER TABLE `dept_manager` ADD CONSTRAINT `fk_employee` FOREIGN KEY ( `emp_no` ) REFERENCES `employees` ( `emp_no` ) ;
ALTER TABLE `dept_manager` ADD CONSTRAINT `fk_dept` FOREIGN KEY ( `dept_no` ) REFERENCES `departments` ( `dept_no` ) ;

ALTER TABLE `dept_emp` ADD CONSTRAINT `fk_employee1` FOREIGN KEY ( `emp_no` ) REFERENCES `employees` ( `emp_no` ) ;
ALTER TABLE `dept_emp` ADD CONSTRAINT `fk_dept1` FOREIGN KEY ( `dept_no` ) REFERENCES `departments` ( `dept_no` ) ;

ALTER TABLE `salaries` ADD CONSTRAINT `fk_employee2` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`);
ALTER TABLE `titles` ADD CONSTRAINT `fk_employee3` FOREIGN KEY ( `emp_no` ) REFERENCES `employees` ( `emp_no` ) ;



