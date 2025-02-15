-- Problem : Write a solution to report the first name , last name ,city ,and state of each person in the Person table . If the address of a personId is not present in the address table , report null insted...

--Data : 
        --1. Given two table Person and Address
        --2. **Person** conatin information regarding Person name 
        --3. **Address** table contain information regarding Where that Person live
        --4. There is no foreign key in address means, table can contain Extra address of user not present in  the Person table.

--Query :  
        SELECT firstName , lastName , city , state 
        FROM Person P LEFT JOIN Address A 
        ON P.personId = A.personId

--Explanation : 
    --1. This Query Will get all the Data From Left Table
    --2.  In case data not present in Rught table for a row in Left table, We will get null .

--Concepts :

        --1. How to Join Two Table Using Left Join
        --2. What is Left join :  
                --* All the data from Left table, only matching data from Right able.
                --* In case Data not present in right table, We will get Null in the columns.  