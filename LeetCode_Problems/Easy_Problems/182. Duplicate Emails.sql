--Problem : Write a solution to report all the duplicate emails.

--Data :
        --1. Given a table "Person" 
        --2. id is primary key and email can have duplicate values. 

--Query : 
        SELECT email AS Email FROM Person 
        GROUP BY email
        HAVING COUNT(email) > 1

--Explanation : 
        --1. We need to find email which are more then one in a table 
        --2. What we did was group by the table based on email field.
        --3. And return those email whose Count is > 1.

--Learning :  
        --1. GROUP BY : GROUP BY is used to group the records based on column or columns. If we have multiple same entry in a column, we can group them all together one after other in seq.

        --2. COUNT(column); Count is a aggregate Function Used For Get the Count of remcrds , value, rows etcs.
        