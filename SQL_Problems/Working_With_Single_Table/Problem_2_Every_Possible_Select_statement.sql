-- Every Possible Select Query We can have,
-- 1. Basic Select
        SELECT * FROM tbldata.
            or
        SELECT MemberCode, ScripCode, Exchange, ProductCode, ScripName, Qty, RecordInsertedTime FROM tblData;    

        -- Both this Statement will Get every Records in table,

--------------------------------------------------------------------------------------------------------------------------------------------------    
-- 2. Filter By Each column.
        --a. Filter By MemberCode
        SELECT * FROM tbldata WHERE MemberCode = 'ABC123' --All With 'ABC123' MemberCode
        SELECT * FROM tblData WHERE MemberCode LIKE 'A%';  --All Starts with 'A'
        SELECT * FROM tblData WHERE MemberCode LIKE '%123';  -- All Ends with '123'

        ------------------------------------------------------------

        --b. ScripCode
        SELECT * FROM tblData WHERE ScripCode = 500325; -- All 500325 ScripCode
        SELECT * FROM tblData WHERE ScripCode > 100000; -- All ScripCode > then 100000
        SELECT * FROM tblData WHERE ScripCode BETWEEN 100000 AND 500000; -- -- All ScripCode BETWEEN 100000 AND 500000

        ---------------------------------------------------------------

        --c. Filter by Exchange (Limited to 2, 3, 5)
        SELECT * FROM tblData WHERE Exchange = 2; -- Only Exchnage 2
        SELECT * FROM tblData WHERE Exchange IN (2, 5); -- Exclude 3
        SELECT * FROM tblData WHERE Exchange NOT IN (3); -- Exclude 3

        ---------------------------------------------------------------

        --d. Filter by ScripName
        SELECT * FROM tblData WHERE ScripName = 'RELIANCE'; -- Only reliance
        SELECT * FROM tblData WHERE ScripName LIKE 'T%'; -- Names starting with 'T'
        SELECT * FROM tblData WHERE ScripName IS NULL; -- Only Records With ScripName NULL
        SELECT * FROM tblData WHERE ScripName IS NOT NULL; -- Only Records With ScripName is not NULL

        -----------------------------------------------------------------

        --e. Filter By RecordInsertedTime
        SELECT * FROM tblData WHERE RecordInsertedTime > '2024-01-01'; -- Records with RecordInsertedTime > '2024-01-01'
        SELECT * FROM tblData WHERE RecordInsertedTime BETWEEN '2024-01-01' AND '2024-12-31';-- Records with RecordInsertedTime BETWEEN '2024-01-01' AND '2024-12-31'
        SELECT * FROM tblData WHERE RecordInsertedTime >= DATEADD(DAY, -7, GETDATE()); -- Last 7 days

--------------------------------------------------------------------------------------------------------------------------------------------------

-- Combining Multiple Consditions

        --a. Filter by MemberCode and ScripCode
        SELECT * FROM tblData WHERE MemberCode = 'XYZ001' AND ScripCode = 500325; -- Records With MemberCode = 'XYZ001' AND ScripCode = 500325

        ------------------------------------------------------------

        --b. Filter by Exchange and ProductCode
        SELECT * FROM tblData WHERE Exchange = 2 AND ProductCode IN (1, 3); -- Records with Excahnge 2 only and Product Code Could be 1 or 3.

        ------------------------------------------------------------

        --c. Filter by Qty and RecordInsertedTime
        SELECT * FROM tblData WHERE Qty > 100000 AND RecordInsertedTime >= '2024-01-01'; -- Records with Qty > 100000 AND RecordInsertedTime >= '2024-01-01'.

        ------------------------------------------------------------

        --d. Filter by Exchange, ProductCode, and Qty
        SELECT * FROM tblData WHERE Exchange = 3 AND ProductCode = 2 AND Qty < 1000000; -- Records With Exchange = 3 AND ProductCode = 2 AND Qty < 1000000;

        ------------------------------------------------------------

        --e. Filter by ScripName and Exchange
        SELECT * FROM tblData WHERE ScripName LIKE 'INF%' AND Exchange = 5; -- All Records that starts With 'INF'and Excahnge only 5.

        ------------------------------------------------------------

        --f. Filter by ProductCode and exclude Exchange = 3
        SELECT * FROM tblData WHERE ProductCode = 16 AND Exchange <> 3; --All Records with ProductCode = 16 AND Exchange other then 3.

        --------------------------------------------------------------

        --g. Records inserted in the last 30 days with high Qty
        SELECT * FROM tblData WHERE RecordInsertedTime >= DATEADD(DAY, -30, GETDATE()) AND Qty > 10000000; --Records Insrted with Qty > 10000000 in last 30 days means ... 
        --Subtract  30  day from today and those those Greater or equal then that will get considered.

--------------------------------------------------------------------------------------------------------------------------------------------------

-- Sorting Data (ORDER BY)
    SELECT * FROM tblData ORDER BY Qty DESC;
    SELECT * FROM tblData ORDER BY RecordInsertedTime DESC;
    SELECT * FROM tblData ORDER BY ScripName ASC;

--------------------------------------------------------------------------------------------------------------------------------------------------

-- Aggregation Queries(GROUP BY ,COUNT ,SUM)
    
    --a. Count of Records for each Exchnage
    SELECT Exchange , COUNT(*) AS RecordCount FROM tblData GROUP BY Exchange
    -- In Result, We We will get two columns
    -- Exchange : Describes ExchangeCode 
    -- RecordCount : Number Of Records Per Exchange.
    --    Exchange	RecordCount
    --    0	        114173
    --    1	        61
    --    2	        348213

    ---------------------------------------------------------------------

    --b. Total Quantity Traded Per Product Code
    SELECT ProductCode , SUM(Qty) AS TotalQty FROM tblDate GROUP BY ProductCode
    -- In Result, We We will get two columns
    -- ProductCode : Describes ProductCode 
    -- TotalQty : Total Qty Per Place Per ProductCode.
    --    ProductCode	TotalQty 
    --    0	            114173
    --    1	            61
    --    2	            348213

    ---------------------------------------------------------------------

    --c. Average Quantity for Each Exchange
    SELECT Exchange, AVG(Qty) AS AvgQuantity FROM tblData GROUP BY Exchange;
    -- In Result , We will get Two Columns
    -- Exchange, AVG(Qty)[Avg Qty Placed By Clients Per Exchnage] 

--------------------------------------------------------------------------------------------------------------------------------------------------

-- Finding Maximum And Minimum 
    
    --a. Maximum Quantity Traded
    SELECT MAX(Qty) AS MaxQty FROm tblData.

    --b. Minimum Quantity for a Specific Exchange
    SELECT MIN(Qty) AS MinQty FROM tblData WHERE Exchange = 2;

--------------------------------------------------------------------------------------------------------------------------------------------------

-- Check For Duplicate ScripCode Entries
    SELECT ScripCode, Count(*) AS Count FROM tblData GROUP BY ScriptCode HAVING COUNT(*) > 1

    --Filter Out all the Data With Scripcode exist > 1.





 