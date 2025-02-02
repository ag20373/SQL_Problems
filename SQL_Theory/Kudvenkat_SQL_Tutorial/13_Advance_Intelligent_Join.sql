In this video we will learn
1. Advanced or intelligent joins in SQL Server
2. Retrieve only the non matching rows from the left table
3. Retrieve only the non matching rows from the right table
4. Retrieve only the non matching rows from both the left and right table

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

-- How To restrieve Only Now matching rows fro left table.
-- i.e.Result Only Null Value rows

SELECT Name, Gender, Salary, DepartmentName
FROM  tblEmployee E
LEFT JOIN  tblDepartment D
ON E.DepartmentId = D.Id
WHERE D.Id IS NULL


-- How To restrieve Only Now matching rows fro Right table.
-- i.e.Result Only Null Value rows

SELECT Name, Gender, Salary, DepartmentName
FROM tblEmployee E
RIGHT JOIN tblDepartment D
ON E.DepartmentId = D.Id
WHERE E.DepartmentId IS NULL

-- How To restrieve Only Now matching rows fro Right table and LEft Table .
-- i.e.Result Only Null Value rows both table

SELECT Name, Gender, Salary, DepartmentName
FROM tblEmployee E
FULL JOIN tblDepartment D
ON E.DepartmentId = D.Id
WHERE E.DepartmentId IS NULL
OR D.Id IS NULL