Q1 : What are Aggregate Functions ?
Ans : Count() , Sum() ,Avg() ,Min() ,Max()

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Q2 : What is Group By?
Ans : Group By clause is  used to group a selected set of rows into a summary rows by the values of one or more columns or expressions.It is always used in conjunction with one or more aggregate functions.

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Q3 : What is HAVING and Difference with WHERE ?
Ans :   
    1. WHERE clause can be used with - Select, Insert, and Update    statements, where as HAVING clause can only be used with the Select statement.
    
    2. WHERE filters rows before aggregation (GROUPING), where as, HAVING filters groups, after the aggregations are performed.
    
    3. Aggregate functions cannot be used in the WHERE clause, unless it is in a sub query contained in a HAVING clause, whereas, aggregate functions can be used in Having clause.

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Q4 : Different SQL Joins 
Ans : 
1. Cross Join : Returns Cartesian product of the table involves in the Join.
2. Inner Join : Returns Only MAtching rows. non matching rows are eliminated
3. Left Join : Returns all the matching rows + non matching rows from left table
4. Right Join : Returns all the matching rows  + non matching rows from the right table.
5. Full Join : Returns all rows from both tables , including the non matching rows.

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Q5 : Different Ways to Replace Null 
Ans : 1. Using ISNULL() :  ISNULL(M.Name,'No Manager')
      2. Using Case : CASE WHEN Name IS NULL THEN 'No Manager' ELSE Name END as Manager
      3. Using COALESCE() function : COALESCE(M.Name, 'No Manager') as Manager

      Note : COALESCE function will return first non null value.

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Q6 : Differences between UNION and UNION ALL (Common Interview Question)
Ans : UNION removes duplicate rows, where as UNION ALL does not. When use UNION, to remove the duplicate rows, sql server has to to do a distinct sort, which is time consuming. For this reason, UNION ALL is much faster than UNION.

For UNION and UNION ALL to work, the Number, Data types, and the order of the columns in the select statements should be same.

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Q7 : Difference between JOIN and UNION
JOINS and UNIONS are different things. However, this question is being asked very frequently now. UNION combines the result-set of two or more select queries into a single result-set which includes all the rows from all the queries in the union, where as JOINS, retrieve data from two or more tables based on logical relationships between the tables. In short, UNION combines rows from 2 or more tables, where JOINS combine columns from 2 or more table.

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Q8 : What are stored procedure status variables?
Ans : Whenever, you execute a stored procedure, it returns an integer status variable. Usually, zero indicates success, and non-zero indicates failure

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Q9 : Difference Between return values and Output parameters
Ans : Return Status Value               Output Parameters
        ------------------------------------------------
      Only Integer Datatype             Any Datatype
      Only  One Value                   More then One value
      USe to convey Success or Faliure  use to return like name,count etc

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Q10 : Advantages of Stored Procedures?
Ans : 
1. Execution Plan retention and Reusability 
2. Reduce network Traffic 
3. Code Reusability and Better Maintainability
4. Better security
5. Avoids SQL Injection Attacks.

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////