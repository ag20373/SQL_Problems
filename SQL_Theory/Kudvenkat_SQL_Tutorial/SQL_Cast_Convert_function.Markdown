* To Convert one date type to another , CAST and CONVERT functions can be used.

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

* Syntax of CAST and CONVERT functions from MSDN : 
CAST(expression AS data_type[(length)])
CONVERT(data_type[(length)],expression[,style])

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

* Consider The Employees Table Below :
![alt text](image.png)

The following 2 queries convert, DateOfBirth's DateTime datatype to NVARCHAR. The first query uses the CAST() function, and the second one uses CONVERT() function. The output is exactly the same for both the queries as shown below.

SELECT id, Name, DateOfBirth, CAST(DateofBirth AS nvarchar) AS ConvertedDOB FROm tblEmployees

SELECT id, Name, DateOfBirth, CONVERT(nvarchar, DateOfBorth) AS ConvertedDOB FROM tblEmployees.

![alt text](image-1.png)

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

* Now, let's use the style parameter of the CONVERT() function, to format the Date as we would like it. In the query below, we are using 103 as the argument for style parameter, which formats the date as dd/mm/yyyy.

SELECT Id, Name, DateOfBirth, CONVERT(nvarchar, DateOfBirth, 103) AS ConvertedDOB FROM tblEmployee.

![alt text](image-2.png)

* The Follwoing table lists a few of the common DateTime Styles:

![alt text](image-3.png)
