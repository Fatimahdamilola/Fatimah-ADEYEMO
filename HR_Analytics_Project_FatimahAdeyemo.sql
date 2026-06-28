Create Database HR
Use HR

--TO SELECT TOP 10
  Select Top 10 *
   From _HR_Data


--TOTALEMPLOYEES
   Select Count(*) as TotalEmployees
    FROM _HR_Data


    --TO CHECK NULLVALUES
    SELECT COUNT(*) TOTALROWS,
    COUNT(termdate) Employeesleft
    FROM _HR_Data


    --TO CREATE FULLNAME
    SELECT CONCAT(first_name,' ',last_name) AS FULLNAME
    FROM _HR_Data



    --ANALYZE EMPLOYEE PERFORMANCE
    --EMPLOYEES BY GENDER
    SELECT gender,
    COUNT(*) EmployeeCount 
    FROM _HR_Data
    GROUP BY gender
    ORDER BY EmployeeCount desc




    --EMPLOYEES BY RACE
    SELECT race,
    COUNT(*) EmployeeCount 
    FROM _HR_Data
    GROUP BY race
    ORDER BY EmployeeCount desc


    --EMPLOYEES BY DEPARTMENT
    SELECT department,
    COUNT(*) EmployeeCount 
    FROM _HR_Data
    GROUP BY department
    ORDER BY EmployeeCount desc

    --EMPLOYEES BY STATE
    SELECT location_state,
    COUNT(*) EmployeeCount 
    FROM _HR_Data
    GROUP BY location_state
    ORDER BY EmployeeCount desc


    --EMPLOYEES BY JOBTITLE
    SELECT jobtitle,
    COUNT(*) EmployeeCount 
    FROM _HR_Data
    GROUP BY jobtitle
    ORDER BY EmployeeCount desc

    --EMPLOYEES RETEN
    SELECT COUNT(*) AS ActiveEmplooyes
    FROM _HR_Data
    WHERE termdate is null

    --TERMINATED EMPLOYEES
    SELECT COUNT(*) AS TerminatedEmplooyes
    FROM _HR_Data
    WHERE termdate is not null

    --RETENTION RATE
    SELECT (
     COUNT(CASE WHEN termdate is null then 1 end) * 100.0
     )/COUNT(*) AS RetentionRate
     FROM _HR_Data

     --Employee Distribution by Age group
     --to calculate age of each employee
        SELECT 
        id,
        first_name,
        last_name,
        DATEDIFF(YEAR,birthdate,GETDATE()) -
        CASE 
        WHEN DATEADD(YEAR,DATEDIFF(YEAR,birthdate,GETDATE()),birthdate)>GETDATE()
        THEN 1
        ELSE 0
        END AS age 
        FROM _HR_Data






