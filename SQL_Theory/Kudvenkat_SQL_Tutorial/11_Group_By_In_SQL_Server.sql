In this video we will learn
1. Grouping rows using GROUP BY
2. Filtering Groups
3. Difference between WHERE and HAVING clause in sql server

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

In SQL We have alot of Aggregate Functions 
1. Count()
2. Sum()
3. avg()
4. Min()
5. Max()

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Group by clause is used to group a selected set of rows into a set of summary rows by the values of one or more columns or expressions. It is always used in conjunction with one or more aggregate functions.

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

--Example : We have a table with Follwiong columns

Table Detail :  ID  Name  Gender  Salary City 

--I want a  Result which give total salary given by city.

Result : City   TotalSalary

--Query For retrievjng total salaries by city 

SELECT City ,SUM(Salary) as TotalSalary FROM tblEmployee 
GROUP BY City 

-- Explanation
            --1. Table Will Get get reorder on the bases of City Name
            --2. Then Sum Function Will Added All the values with common city

-- Note : With Out GROUP BY We Will Get Error "Column 'tblEmployee.City' is invalid in the select list because it is not contained in either an aggregate function or the GROUP BY clause. " 

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

-- Query Retrieveing Total Salaries by city and by Gender

SELECT City ,SUM(Salary) AS TotalSalary FROM tblEmployee
GROUP BY City ,Gender

--Explanation : 
            --1. Table Will Get get reorder on the bases of City Name And Then on The Basic of Gender
            --2. Sum Function will added all the salary on the basic of city ,separated for both mena and women

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

-- Query For Reteiveing total Slalaries and Total Number of empliyees by City and by gender.

SELECT City ,SUM(Salary) AS TotalSalary , COUNT(ID) as TotalEmployee 
FROM tblEmployee GROUP BY City ,Gender

Result : City ,Gender ,TotalSalary ,TotalEmployee

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Filtering rows : 
                WHERE clause is used to filter rows before aggregation, where as HAVING clause is used to filter groups after aggregations. The following 2 queries produce the same result.

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

-- Filtering rows using WHERE clause, before aggrgations take place:
SELECT City ,SUM(Salary) AS TotalSalary FROM tblEmployee
WHERE City = 'London' GROUP BY City

-- Filtering groups using HAVING clause, after all aggrgations take place:
SELECT City ,SUM(Salary) AS TotalSalary FROM tblEmployee
GROUP BY City HAVING City = 'London'

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

-- Difference BEtween WHERE and HAVING clause 
1. WHERE clause can be used with - Select, Insert, and Update statements, where as HAVING clause can only be used with the Select statement.
2. WHERE filters rows before aggregation (GROUPING), where as, HAVING filters groups, after the aggregations are performed.
3. Aggregate functions cannot be used in the WHERE clause, unless it is in a sub query contained in a HAVING clause, whereas, aggregate functions can be used in Having clause.