In this video we will learn about
1. The different types of Joins in sql server
2. Cross Join
3. Inner Join
4. Outer Join [ Left , Right and Full Outer Join.]

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

In SQL server , there are different types of joins.
1. CROSS JOIN
2. INNER JOIN
3. OUTER JOIN

OUTER JOIN are agagin divided into 3 types.
1. LEFT JOIN
2. RIGHT JOIN
3. FULL JOIN

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

tbl_Department 
ID DepartmentName Location DepartmentHead 
1   IT            London    Rick
2   Payroll       Delhi     Ron
3   HR            New York  Christie
4   Other Dprtmnt Sydney    Cindrella

TblEmployee
ID  Name    Gender  Salary  DepartmentId 
1   Tom     Male    4000     1
2   Pam     Female  3000     3
3   John    Male    3500     1
4   Sam     Male    4500     2
5   Todd    Male    2800     2
6   Ben     Male    7000     1
7   Sara    Female  4800     3
8   Valarie Female  5500     1
9   James   Male    6500     Null
10  Russell Male    8800     Null

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

--CROSS JOIN : CROSS JOIN, produces the cartesian product of the 2 tables involved in the join. For example, in the Employees table we have 10 rows and in the Departments table we have 4 rows. So, a cross join between these 2 tables produces 40 rows. Cross Join shouldn't have ON clause.

--CROSS JOIN QUERY : 
SELECT Name ,Gender , Salary ,DepartmentName FROM tblEmployee CROSS JOIN tbl_Department

Result 40 Rows With Column Name ,Gender , Salary ,DepartmentName

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

-- JOIN or INNER JOIN
-- Write a query to retrieve Name, Gender, Slalary, ad Department name FROm Employees and Departments table .

SELECT Name ,Gender ,Salary ,DepartmentName FROm tblEmployee INNER JOIN tblDepartment
ON tblEmployee.DepartmentId = tblDepartment.Id

or

SELECT Name, Gender, Salary, DepartmentName FROM tblEmployee JOIN tblDepartment
ON tblEmployee.DepartmentId = tblDepartment.Id

--Result : we got only 8 rows, but in the Employees table, we have 10 rows. We didn't get JAMES and RUSSELL records. This is because the DEPARTMENTID, in Employees table is NULL for these two employees and doesn't match with ID column in Departments table.

--So, in summary, INNER JOIN, returns only the matching rows between both the tables. Non matching rows are eliminated. 

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

-- LEFT JOIN or LEFT OUTER JOIN
--Now, let's say, I want all the rows from the Employees table, including JAMES and RUSSELL records. I want the output, as shown below.

SELECT Name, Gender, Salary, DepartmentName FROM tblEmployee
LEFT OUTER JOIN tblDepartment
ON tblEmployee.DepartmentId = tblDepartment.Id

or

SELECT Name, Gender, Salary, DepartmentName FROM tblEmployee
LEFT JOIN tblDepartment
ON tblEmployee.DepartmentId = tblDepartment.Id

--In Result : 10 Rows LEFT JOIN, returns all the matching rows + non matching rows from the left table. In reality, INNER JOIN and LEFT JOIN are extensively used.

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

-- RIGHT JOIN or  FULL OUTER JOIN
-- I want, all the rows from the right table. The query output should be, as shown below.

SELECT Name, Gender, Salary, DepartmentName
FROM tblEmployee
RIGHT OUTER JOIN tblDepartment
ON tblEmployee.DepartmentId = tblDepartment.Id

OR

SELECT Name, Gender, Salary, DepartmentName
FROM tblEmployee
RIGHT JOIN tblDepartment
ON tblEmployee.DepartmentId = tblDepartment.Id

-- Result , MAtching Rows From Both table 8 and 1 Not matching row Right table ..
--RIGHT JOIN, returns all the matching rows + non matching rows from the right table.

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

-- Full JOIN or FULL OUTER JOIN
-- I want all the rows from both the tables involved in the join. The query output should be, as shown below.

SELECT Name, Gender, Salary, DepartmentName
FROM tblEmployee
FULL OUTER JOIN tblDepartment
ON tblEmployee.DepartmentId = tblDepartment.Id

OR

SELECT Name, Gender, Salary, DepartmentName
FROM tblEmployee
FULL JOIN tblDepartment
ON tblEmployee.DepartmentId = tblDepartment.Id

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
