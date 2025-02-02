How to get the last generated identity column value in SQL Server

1. SELECT SCOPE_IDENTITY(); -- Returns the last identity value that is Created in th same session and in the same scope

2. SELECT @@IDENTITY;-- Global ,returns the last identity value that is created in the same session and across any scope.

3. SELECT IDENT_CURRENT('tblPerson'); -- returns the last identity value that is created for a specific table across any session and any scope.


--SCOPE_IDENTITY() returns the last identity value that is created in the same session (Connection) and in the same scope (in the same Stored procedure, function, trigger). Let's say, I have 2 tables tblPerson1 and tblPerson2, and I have a trigger on tblPerson1 table, which will insert a record into tblPerson2 table. Now, when you insert a record into tblPerson1 table,  SCOPE_IDENTITY() returns the idetentity value that is generated in tblPerson1 table, where as @@IDENTITY returns, the value that is generated in tblPerson2 table. So, @@IDENTITY returns the last identity value that is created in the same session without any consideration to the scope. IDENT_CURRENT('tblPerson') returns the last identity value created for a specific table across any session and any scope.

