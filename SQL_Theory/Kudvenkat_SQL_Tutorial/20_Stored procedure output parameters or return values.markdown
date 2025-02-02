In this video we will 
1. Understand what are stored procedure return values
2. Difference between stored procedure return values and output parameters
3. When to use output parameters over return values

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

-> What are Stored Procedure Status Variables ?
Ans :- Whenever, you execute a stored procedure, it returns an integer status variable. Usually, zero indicates success, and non-zero indicates failure. To see this yourself, execute any stored procedure from the object explorer, in sql server management studio. 
1. Right Click and select 'Execute Stored Procedure
2. If the procedure, expects parameters, provide the values and click OK.
3. Along with the result that you expect, the stored procedure, also returns a Return Value = 0

So, from this we understood that, when a stored procedure is executed, it returns an integer status variable

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

-> Difference Between return values and Output parameters
Ans : Return Status Value               Output Parameters
        ------------------------------------------------
      Only Integer Datatype             Any Datatype
      Only  One Value                   More then One value
      USe to convey Success or Faliure  use to return like name,count etc