In this video session we will learn about
1. DateTime data types
2. DateTime functions available to select the current system date and time
3. Understanding concepts - UTC time and Time Zone offset


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

There are several built-in DateTime functions available in SQL Server. All the following functions can be used to get the current system date and time, where you have sql server installed.

Function	    Date Time Format	    Description
GETDATE() : 2012-08-31 20:15:04.543	: Commonly used function
CURRENT_TIMESTAMP : 2012-08-31 20:15:04.543 : ANSI SQL equivalent to GETDATE
SYSDATETIME() : 2012-08-31 20:15:04.5380028 : More fractional seconds precision
SYSDATETIMEOFFSET() : 2012-08-31 20:15:04.5380028 + 01:00 : More fractional seconds precision + Time zone offset
GETUTCDATE() : 2012-08-31 19:15:04.543 : UTC Date and Time
SYSUTCDATETIME() : 2012-08-31 19:15:04.5380028 : UTC Date and Time, with More fractional seconds precision


Note: UTC stands for Coordinated Universal Time, based on which, the world regulates clocks and time. There are slight differences between GMT and UTC, but for most common purposes, UTC is synonymous with GMT.

To practically understand how the different date time datatypes available in SQL Server, store data, create the sample table tblDateTime.
CREATE TABLE [tblDateTime]
(
 [c_time] [time](7) NULL,
 [c_date] [date] NULL,
 [c_smalldatetime] [smalldatetime] NULL,
 [c_datetime] [datetime] NULL,
 [c_datetime2] [datetime2](7) NULL,
 [c_datetimeoffset] [datetimeoffset](7) NULL
)

To Insert some sample data, execute the following query. 
INSERT INTO tblDateTime VALUES (GETDATE(),GETDATE(),GETDATE(),GETDATE(),GETDATE(),GETDATE())

Now, issue a select statement, and you should see, the different types of datetime datatypes, storing the current datetime, in different formats.