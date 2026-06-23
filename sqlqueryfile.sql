CREATE DATABASE Attrition;
SHOW databases;
USE attrition;

CREATE TABLE employee_attrition (
    Employee_ID VARCHAR(10),
    Department VARCHAR(50),
    Salary INT,
    Age INT,
    Experience INT,
    Job_Role VARCHAR(50),
    Attrition VARCHAR(10)
);



INSERT INTO employee_attrition
(Employee_ID, Department, Salary, Age, Experience, Job_Role, Attrition)
VALUES
('E001','Sales',42000,24,2,'Sales Executive','Yes'),
('E002','IT',68000,29,5,'Software Engineer','No'),
('E003','HR',45000,26,3,'HR Executive','Yes'),
('E004','Finance',72000,35,8,'Accountant','No'),
('E005','IT',85000,40,12,'Team Lead','No'),
('E006','Sales',39000,23,1,'Sales Executive','Yes'),
('E007','Marketing',50000,28,4,'Marketing Specialist','No'),
('E008','HR',47000,30,5,'Recruiter','No'),
('E009','Finance',76000,38,10,'Financial Analyst','No'),
('E010','IT',62000,27,4,'Developer','Yes'),
('E011','Sales',43000,25,2,'Sales Executive','Yes'),
('E012','Marketing',54000,31,6,'SEO Analyst','No'),
('E013','HR',46000,29,4,'HR Executive','Yes'),
('E014','Finance',80000,41,13,'Senior Accountant','No'),
('E015','IT',61000,26,3,'Developer','Yes'),
('E016','Sales',45000,27,4,'Sales Executive','No'),
('E017','Marketing',52000,29,5,'Content Strategist','Yes'),
('E018','HR',49000,32,7,'HR Manager','No'),
('E019','Finance',69000,34,7,'Accountant','No'),
('E020','IT',92000,43,15,'Engineering Manager','No'),
('E021','Sales',41000,24,2,'Sales Associate','Yes'),
('E022','Marketing',56000,33,8,'Brand Manager','No'),
('E023','IT',64000,28,5,'Backend Developer','No'),
('E024','Finance',71000,36,9,'Financial Analyst','No'),
('E025','HR',44000,25,2,'Recruiter','Yes');

SELECT * FROM employee_attrition;

SELECT department ,
COUNT(*) AS "attrition_count" 
FROM employee_attrition 
WHERE attrition = 'yes' 
GROUP BY department 
ORDER BY attrition_count DESC;

SELECT department , 
AVG(salary) AS "Average_salary" 
FROM employee_attrition
GROUP BY department
ORDER BY Average_salary ASC ;

SELECT attrition , 
AVG(experience) AS Avg_experience
FROM employee_attrition
Group by attrition;

-- SELECT department, COUNT(*) FROM employee_attrition GROUP BY department;

SELECT department , ROUND(SUM(CASE WHEN attrition = 'yes' THEN 1 ELSE 0 END)*100/COUNT(*) , 2) AS attrition_rate
FROM employee_attrition
GROUP BY department;

	

