--WITH CTE_Employee as
--	(SELECT FirstName,LastName, Gender,Salary
--	, COUNT(gender) OVER (PARTITION by Gender) as TotalGender
--	, AVG(Salary) OVER (PARTITION BY Gender) as AvgSalary
--	FROM SQLTutorial..EmployeeDemographics emp
--	JOIN SQLTutorial..EmployeeSalary sal
--		ON emp.EmployeeID = sal.EmployeeID
--	WHERE Salary > '45000'
--)
--Select *
--FROM CTE_Employee

--CREATE TABLE #temp_Employee (
--EmployeeID int,
--JobTitle varchar (100),
--Salary int
--)

--Select *
--FROM #temp_Employee

--INSERT INTO #temp_Employee VALUES (
--'1001', 'HR', '4500'
--)

--INSERT INTO #temp_Employee
--SELECT *
--FROM SQLTutorial..EmployeeSalary

--DROP TABLE IF EXISTS #temp_Employee2 
--CREATE TABLE #temp_Employee2 (
--JobTitle varchar(50),
--EmployeesPerJob int,
--AvgAge int,
--AvgSalary int)

--INSERT INTO #temp_Employee2
--SELECT JobTitle, COUNT(JobTitle), Avg(Age), AVG(Salary)
--FROM SQLTutorial..EmployeeDemographics emp
--JOIN SQLTutorial..EmployeeSalary sal
--ON emp.EmployeeID = sal.EmployeeID
--group by JobTitle 

--SELECT *
--FROM #temp_Employee2 

Select *
From EmployeeSalary

