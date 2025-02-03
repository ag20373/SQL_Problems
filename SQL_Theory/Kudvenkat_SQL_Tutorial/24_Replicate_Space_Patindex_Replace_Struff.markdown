12. REPLICATE(strin_to_Be_Replicated,Number_Of_time_Replicated) : Repeats the Given string , for the specified number of times.
    Example : SELECT REPLICATE('Pragim',3)
    Output : Pragrim Pragim Pragim

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

13. SPACE(Number_Of_Spaces) : Returns number of spaces , Returns number of spaces, specified by the Number_Of_Spaces argument.
    Example : SELECT FirstName + SPACE(5) + LastName AS FullName FROM tblEmployee
    Output : (Amit     Gupta)

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

14. PATINDEX('%Pattern%',Expression) : Returns the starting position of the first occurrence of a pattern in a specified expression. It takes two arguments, the pattern to be searched and the expression. PATINDEX() is simial to CHARINDEX(). With CHARINDEX() we cannot use wildcards, where as PATINDEX() provides this capability. If the specified pattern is not found, PATINDEX() returns ZERO.

    Example : SELECT Email ,PATINDEX('%@aaa.com',Email) AS FirstOccurence 
              FROM tblEmployee
              WHERE PATINDEX('%@aaa.com', Email) > 0

    Output :  Email          FirstOccurence
              Sam@aaa.com    4
              John           5

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

15. REPLACE(String_Expression, Pattern , Replacement_Value)
    Replaces all occurrences of a specified string value with another string value.

    Example: All .COM strings are replaced with .NET
    Select Email, REPLACE(Email, '.com', '.net') as ConvertedEmail
    from  tblEmployee

    Output : Sam@aaa.com  To Sam@aaa.net

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

16. STUFF(Original_Expression, Start, Length, Replacement_expression) : 
    STUFF() function inserts Replacement_expression, at the start position specified, along with removing the charactes specified using Length parameter.

    Example:
    Select FirstName, LastName,Email, STUFF(Email, 2, 3, '*****') as StuffedEmail
    From tblEmployee

    Output : Sam@aaa.com To S*****aaa.com