CHECK Constraint i used to Limit the range of the Values,that can be enteretd for a column.

Exmaple : Limiting the Value in colums Like Range of AGE between 1 to 150

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Q : The folllwing check constaint , limits the age between ZERO and 150.
-> ALTER TABLE tblPerson ADD CONSTAINT Ck_tblPerson_Age CHECK (Age > 0 AND Age < 150)

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Q : General formaula 
-> ALTER TABLE {TABLE_NAME}
    ADD CONSTRAINT {CONSTRAINT_NAME} CHECK {BOOLEAN_EXPRESSION}

If the BOOLEAN_EXPRESSION returns true, then the CHECK constraint allows the value, otherwise it doesn't. Since, AGE is a nullable column, it's possible to pass null for this column, when inserting a row. When you pass NULL for the AGE column, the boolean expression evaluates to UNKNOWN, and allows the value.

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Q : Drop Constraint 
Query : ALTER TABLE tblPerson 
        DROP CONSTRAINT Ck_tblPerson_Age