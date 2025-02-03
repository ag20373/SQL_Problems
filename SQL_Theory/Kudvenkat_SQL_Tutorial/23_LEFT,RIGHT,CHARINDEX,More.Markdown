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

-> Problem : 
Given A Table 
![alt text](./Images/image_11.png)

Write a Query to Find the Total Number of Email, By domain.
Result 
![alt text](./Images/image_12.png)

Query : 
        SELECT 
        SUBSTRING(Email ,CHARINDEX('@',Email)+1,LEN(Email) - CHARINDEX('@',Email)) AS EmailDomain , COUNT(Email) AS TOTAL 
        FROM tbl_Given 
        GROUP BY GROUP BY SUBSTRING(Email, CHARINDEX('@', Email) + 1, LEN(Email) - CHARINDEX('@', Email)) 