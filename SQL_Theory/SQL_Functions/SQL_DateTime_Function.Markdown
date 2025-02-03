1. GETDATE() : Get current Date.

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

2. ISDATE() : Checks if the given value, is a valid date, time, or datetime. Returns 1 for success, 0 for failure.

Example : SELECT ISDATE('PRAGIM') -- Returns 0
          SELECT ISDATE(Getdate()) -- returns 1
          SELECT ISDATE('2012-08-31 21:02:04.167') -- returns 1

Note : For datetime2 values, IsDate returns ZERO.

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

3. DAY() : Return Day number of the month.
    Example : Select DAY('01/31/2012') -- Returns 31

   MONTH() :  Return month number of Year 
   Example : Select DAY('01/31/2012') -- Returns 1

   YEAR() :  Return Year number  
   Example : Select DAY('01/31/2012') -- Returns 2012

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

4. DateName(DatePart, Date) - Returns a string, that represents a part of the given date. This functions takes 2 parameters. The first parameter 'DatePart' specifies, the part of the date, we want. The second parameter, is the actual date, from which we want the part of the Date.
    Examples:
    Select DATENAME(Day, '2012-09-30 12:43:46.837') -- Returns 30
    Select DATENAME(WEEKDAY, '2012-09-30 12:43:46.837') -- Returns Sunday
    Select DATENAME(MONTH, '2012-09-30 12:43:46.837') -- Returns September 

    Select Name, DateOfBirth, DateName(WEEKDAY,DateOfBirth) as [Day], 
            Month(DateOfBirth) as MonthNumber, 
            DateName(MONTH, DateOfBirth) as [MonthName],
            Year(DateOfBirth) as [Year]
    From   tblEmployees

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

5. DatePart(DatePart, Date) - Returns an integer representing the specified DatePart. This function is simialar to DateName(). DateName() returns nvarchar, where as DatePart() returns an integer. The valid DatePart parameter values are shown below.

Examples:
Select DATEPART(weekday, '2012-08-30 19:45:31.793') -- returns 5
Select DATENAME(weekday, '2012-08-30 19:45:31.793') -- returns Thursday

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

6. DATEADD (datepart, NumberToAdd, date) - Returns the DateTime, after adding specified NumberToAdd, to the datepart specified of the given date.

Examples:
Select DateAdd(DAY, 20, '2012-08-30 19:45:31.793') 
-- Returns 2012-09-19 19:45:31.793
Select DateAdd(DAY, -20, '2012-08-30 19:45:31.793') 
-- Returns 2012-08-10 19:45:31.793

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

7. DATEDIFF(datepart, startdate, enddate) - Returns the count of the specified datepart boundaries crossed between the specified startdate and enddate.

Examples:
Select DATEDIFF(MONTH, '11/30/2005','01/31/2006') -- returns 2
Select DATEDIFF(DAY, '11/30/2005','01/31/2006') -- returns 62