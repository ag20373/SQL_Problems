Identity Column : If a Column Marked as identity column, then the values for that column automatically generated, whne you insert a new row into table. tatement marks PersonId as an identity column with seed = 1 and Identity Increment = 1. Seed and Increment values are optional. If you dont specify specify the identity and seed they both default to 1.


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Q : Creating Identity Column ,,,,

CREATE TABLE tblPerson 
{
    PersonId int Identity(1,1) Primary Key,
    Name nvarchar(20)
}

--In the following 2 insert statements, we only supply values for Name column and not for PersonId column. 
Insert into tblPerson values ('Sam')
Insert into tblPerson values ('Sara')

--If you select all the rows from tblPerson table, you will see that, 'Sam' and 'Sara' rows have got 1 and 2 as PersonId.

--Now, if I try to execute the following query, I get an error stating - An explicit value for the identity column in table 'tblPerson' can only be specified when a column list is used and IDENTITY_INSERT is ON. 
Insert into tblPerson values (1,'Todd')

--So if you mark a column as an Identity column, you dont have to explicitly supply a value for that column when you insert a new row. The value is automatically calculated and provided by SQL server. So, to insert a row into tblPerson table, just provide value for Name column.
Insert into tblPerson values ('Todd')

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Q : Delete a row From index

--Delete the row, that you have just inserted and insert another row. You see that the value for PersonId is 2. Now if you insert another row, PersonId is 3. A record with PersonId = 1, does not exist, and I want to fill this gap. To do this, we should be able to explicitly supply the value for identity column. To explicitly supply a value for identity column

--1. First turn on identity insert -
    SET Identity_Insert tblPerson ON
--2. In the insert query specify the column list
    Insert into tblPerson(PersonId, Name) values(2, 'John')

--As long as the Identity_Insert is turned on for a table, you need to explicitly provide the value for that column. If you don't provide the value, you get an error - Explicit value must be specified for identity column in table 'tblPerson1' either when IDENTITY_INSERT is set to ON or when a replication user is inserting into a NOT FOR REPLICATION identity column. 

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Q : Reset The Identity Column 

--If you have deleted all the rows in a table, and you want to reset the identity column value, use DBCC CHECKIDENT command. This command will reset PersonId identity column.

DBCC CHECKDENT(tblPerson, RESEED,0) 

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////