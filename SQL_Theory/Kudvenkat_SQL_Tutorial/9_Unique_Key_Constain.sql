Unique key constraint - 
--We use UNIQUE constraint to enforce uniqueness of a column i.e the column shouldnt allow any duplicate values. We can add a Unique constraint thru the designer or using a query.

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Q : To add a unique constraint using SQL server management studio designer:
--1. Right-click on the table and select Design
--2. Right-click on the column, and select Indexes/Keys...
--3. Click Add
--4. For Columns, select the column name you want to be unique.
--5. For Type, choose Unique Key.
--6. Click Close, Save the table.

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Q : To create the unique key using a query:

Query : ALTER TABLE table_name 
        ADD CONSTRAINT constraint_Name UNIQUE (Column_name)

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Q : Differenct in Primary Key and Unique constraint 
    -- A table can have, only one primary key. If you want to enforce uniqueness on 2 or more columns, then we use unique key constraint.

    -- Primary key does not allow nulls, where as unique key allows one null

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Q : Drop a Constraint 
    ->  Right click the constraint and delete.
    -> Query : Alter Table tblPerson
                Drop COnstraint UQ_tblPerson_Email