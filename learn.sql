create database sql_learning;

-- 1st Lecture
use sql_learning;
create table Employee(
    EmpId int primary key ,
    Name varchar(50),
    ManagerId int,
    DOJ date,
    City varchar(50)
);

-- Adding Data
insert into Employee(EmpId, Name, ManagerId, DOJ, City)
values
    (121,'John',321,'2016-1-31','Hyd'),
    (321,'David',986,'2018-1-30','Chennai'),
    (421,'Scott',876,'2020-11-27','Mumbai');

-- Write an sql query to fetch the EmpId and Name of all the employees working under ManagerId = 986
select EmpId, Name from Employee where ManagerId = 986;


use sql_learning;
create table Salary(
    EmpId int primary key,
    Project varchar(50),
    Salary int,
    Variable int
);
insert into Salary(EmpId, Project, Salary, Variable)
values
    (121,'P1',20000,0),
    (321,'P2',35000,1000),
    (421,'P1',50000,3000);


-- Write an sql query to fetch the different projects available from the Salary table
select DISTINCT(Project) from Salary;

-- Write an sql query to fetch the count of employees working in project 'P1'
-- select count(*) from Salary where Project = 'P1';
select count(EmpId) from Salary where Project = 'P1';

-- Write an sql query to fetch the max, min & avg salary of employees
select max(Salary), min(Salary), avg(Salary) from Salary;

-- Write an sql query to fetch the employee id whose salary lies in the range of 30000 and 40000
select EmpId from Salary where Salary between 30000 and 40000;

-- Write an sql query to fetch those employees from Employee table who live in Chennai and work under manager with manager id = 986
select EmpId,Name from Employee where City = 'Chennai' and ManagerId = 986;

-- Write an sql query to fetch those employees from Employee table who either live in Chennai or work under manager with manager id = 321
select EmpId,Name from Employee where City = 'Chennai' or ManagerId = 321;

-- Write an sql query to fetch all those employee from Salary table who work on project other than P1
select EmpId from Salary where not Project = 'P1';

-- Write an sql query to display the total salary of each employee adding the salary with Variable value use Salary Table (*****************)
select EmpId, (Salary+Variable) as totalSalary from Salary;

-- Write an sql query to fetch all the employees whose name begins with any two characters,followed by a text "vi" and ending with any sequence of characters  use Employee table (******************)
select Name from Employee where Name like '__vi%';

-- 2nd Lecture
use sql_learning;
create table Employee_2(
    EMPLOYEE_ID int PRIMARY KEY,
    LAST_NAME VARCHAR(50),
    FIRST_NAME VARCHAR(50),
    MIDDLE_NAME VARCHAR(5),
    JOB_ID int,
    MANAGER_ID int,
    HIRE_DATE DATE,
    SALARY int,
    COMM int,
    DEPARTMENT_ID int
);
insert into Employee_2(employee_id, last_name, first_name, middle_name, job_id, manager_id, hire_date, salary, comm, department_id)
values
    (7369,'SMITH','JOHN','Q',667,7902,'84-12-17',800,NULL,20),
    (7499,'ALLEN','KEVIN','J',670,7698,'85-2-20',1600,300,30),
    (7505,'DOYLE','JEAN','K',671,7839,'85-4-4',2850,NULL,30),
    (7506,'DENNIS','LYNN','S',671,7839,'85-5-15',2750,NULL,30),
    (7507,'BAKER','LESLIE','D',671,7839,'85-6-10',2200,NULL,40),
    (7521,'WARK','CYNTHIA','D',670,7698,'85-2-22',1250,NULL,40);

