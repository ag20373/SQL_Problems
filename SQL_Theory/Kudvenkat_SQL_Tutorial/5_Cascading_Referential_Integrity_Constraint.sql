--Cascading referential integrity constrain Allows  to define the action Microsoft SQL Server Should take when a user attemps to delete or update a key to which an exisiting foreign key points.

For Example : 
    -> Consider Two Tables 
    -> Table 1 has column with genderid as Foreign key and points to Table 2 primary key GenderID.
    -> If we try to delete some record from Table 2 , then the row with that record will become orphan record.
    -> By Default , We get an error and the DELETE or UPDATE Statemnt is rolled back

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

However, you have the following options when setting up Cascading referential integrity constraint

1. No Action : Default Behaviour. No Action is taken, an error is raised and DELETE or UPDATE is rolled back

2. Cascade : Specifies that if an attempt is made to delete or Update a row with a key referenced by the foerign keys in exisiting rows in the other tables, all rows containing those foreign keys are also delted or updated.

3. Set NULL: Specifies that if an attempt is made to delete or update a row with a key referenced by foreign keys in existing rows in other tables, all rows containing those foreign keys are set to NULL.  

4. Set Default: Specifies that if an attempt is made to delete or update a row with a key referenced by foreign keys in existing rows in other tables, all rows containing those foreign keys are set to default values.