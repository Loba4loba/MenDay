CREATE TABLE IF NOT EXISTS job.employee(
	sn INT(255) UNIQUE AUTO_INCREMENT NOT NULL,
	employee_id VARCHAR (255) PRIMARY KEY NOT NULL,
	job_id VARCHAR (8) NOT NULL, 
	first_name VARCHAR(225), 
	last_name VARCHAR(225),
	email VARCHAR(225) UNIQUE NOT NULL,
	phone_no int(10) UNIQUE NOT NULL,
	Hire_date TIMESTAMP,
	Salary DECIMAL(6,2) DEFAULT 0,
	Commission_pct DECIMAL(6,2) DEFAULT 0,
	manager_id INT(255),
	Department_id INT(255),
	creat_date TIMESTAMP,
	updated_date TIMESTAMP
	);


	show tables;


	-- ASSIGNMENT 
	SELECT first_name AS 'First name', last_name AS 'Last name' FROM Job.employee;
	SELECT sn AS Number, CONCAT(Email,'-',Job_id) AS details From Job,employee;
	SELECT DISTINCT department_id FROM employee;
	SELECT* FROM Job.Employee ORDER BY First_name DESC;
	SELECT CONCAT(first_name,last_name) AS NAMES, salary, (salary * 0.15) AS PF FROM employee;
	SELECT employee_id , CONCAT(First_name,last_name)AS NAME,salary FROM employee ORDER BY Salary ASC;
	SELECT SUM(salary) AS 'TOTAL SALARY PAYABLE' FROM employee; 
	SELECT Employee_id WHERE Salary>=24000.00 and Salary<=4200;
	SELECT Job_id FROM Job.Employee;	
