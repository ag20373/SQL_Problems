1. ASCII(Character_Expression) -  Returns the ASCII Code of the Given Character Expression. 
    Example : Select ASCII('A')
    Output : 65

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

2. CHAR(Integer_Expression) - converts an int ASCII code to a character. The Interger_Expression, should be Between 0 and 255
    Example : Print All the Charcaters for ASCII Values from 0 to 255

    Query : DECLARE @intnumber int
            SET @intnumber = 1
            WHILE (@intnumber <= 255)
            BEGIN
                Print CHAR(@intnumber)
                @intnumber = @intnumber + 1
            END

    Output : A , B , C ....all  Upper and Lower char.

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

3. LOWER(Char_Value) : Convert Upper Letter to Lower 
    Example : SELECT LOWER('A');
    Output : a;

    UPPER (Char_Value) : Convert Lower Letter to Upper 
    Example : SELECT LOWER('a');
    Output : A;

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

4. LTRIM(Char_Expression) : Remove Left Blank Space From Character
    Example : SELECT LTRIM('   Hello')
    Output : Hello

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

5. RTRIM(Char_Expression) : Remove Left Blank Space From Character
    Example : SELECT LTRIM('Hello   ')
    Output : Hello

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

6. LTRIM(RTRIM(Char_Expression)) : Remove Right and LEft Space From Charcter.
    Example : SELECT LTRIM(RTRIM('  Hello   '))
    Output : Hello

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

7. REVERSE(String_Expression) : Reverse the The String
    Example : Select REVERSE('ABCDEFGHIJKLMNOPQRSTUVWXYZ')
    Output: ZYXWVUTSRQPONMLKJIHGFEDCBA

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

8. LEN(String_Expression) - Returns the count of total characters, in the given string expression, excluding the blanks at the end of the expression.

    Example: Select LEN('SQL Functions   ')
    Output: 13

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

9. LEFT(Char_Expression , Interger_Expression) : Returns the Specified  number of charcters from the left side hand side of the given character Expresssion 
    Example : SELECT LEFT('ABCDE',3)
    Output : ABC

    RIGHT(Char_Expression , Interger_Expression) : Returns the Specified number of charcters from the right side hand side of the given character Expresssion 
    Example : SELECT LEFT('ABCDE',3)
    Output : CDE

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

10. CHARINDEX('Expression_To_find','Expression_to_Search','Start_Location') - Returns the starting position of the specified expression in a character string Start_Location in optional.
    Example : SELECT CHARINDEX('@','sara@abc.com',1)
    Output : 5.

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

11. SUBSTRING('Expression','Start','Length') - As the name, suggests, this function returns substring (part of the string), from the given expression. You specify the starting location using the 'start' parameter and the number of characters in the substring using 'Length' parameter. All the 3 parameters are mandatory.

    Example : SELECT SUBSTRING('john@bbb.com',6,7)
    Output : bbb.com

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

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