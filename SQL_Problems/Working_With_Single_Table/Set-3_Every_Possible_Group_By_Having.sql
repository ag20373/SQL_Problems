-- Basic GROUP BY With COUNT 
    --Problem : Count The Number Of Records Per Exchange
    
    SELECT Exchange ,Count(*) AS TotalRecordsPerExchange
    FROM tblData
    GROUP BY Exchange;

    -- We will get Total number Records Per Exchange (2,3,5).

--------------------------------------------------------------------------------------------------------------------------------------------------

-- GROUP BY with SUM
    --Problem : Total Qty Per Exchange

    SELECT Product , SUM(Qty) AS TotalQty 
    FROM tblData
    GROUP  BY ProductCode

    -- In Result We will Over All Qty Per Product Type.

--------------------------------------------------------------------------------------------------------------------------------------------------

-- GROUP BY with AVG
    -- Problem : Find the average Qty Per Exchange

    SELECT Exchange, AVG(qty) AS AvgQuantity 
    FROM tblData
    GROUP BY Exchange;

    -- Finds the average Qty for each Exchange.

--------------------------------------------------------------------------------------------------------------------------------------------------

-- GROUP BY with MIN & MAX
    -- Problem : Find the min and max quantity for each Exchange
    
    SELECT Exchange, MIN(Qty) As MinQty , MAX(Qty) AS MaxQty 
    FROM tblData
    GROUP BY Exchange;

    -- Result Will Give us Min and Max Qty/Order Per Placed PEr Client

--------------------------------------------------------------------------------------------------------------------------------------------------

-- GROUP BY with HAVING
    -- Problem : Show only Exchanges where total quantity exceeds 50,000
    
    SELECT Exchange, SUM(Qty) AS TotalQuantity
    FROM tblData
    GROUP BY Exchange
    HAVING SUM(Qty) > 50000;

    -- In Result ,We will get Total Qty PEr Exchange Only If Exceeds 50000

--------------------------------------------------------------------------------------------------------------------------------------------------

-- GROUP BY with Multiple Columns
    -- Problem : Find total quantity per (Exchange + ProductCode)

    SELECT Exchange , ProductCode , SUM(Qty) AS TotalQty 
    FROM tblData
    GROUP BY Exchange , ProductCode

    --Groups by both Exchange and ProductCode to show detailed totals.

--------------------------------------------------------------------------------------------------------------------------------------------------

-- GROUP BY with COUNT and HAVING
    -- Problem : Find how many trades each MemberCode made, only showing those who made more than 1 trade

    SELECT MemberCode , COUNT(*) AS TotalTrades FROM tblData
    GROUP BY MemberCode 
    HAVING COUNT(*) > 1

    -- In Result ,We Will Get all those members Who have placed More then one order.

--------------------------------------------------------------------------------------------------------------------------------------------------

-- Advanced GROUP BY with DATE Filtering
    -- Problem : Find daily trade count

    SELECT CAST(RecordInsertedTime AS DATE) AS TradeDate, COUNT(*) AS TradeCount
    FROM tblData
    GROUP BY CAST(RecordInsertedTime AS DATE);

    --Counts How Many Trade Happens Per Day.

--------------------------------------------------------------------------------------------------------------------------------------------------

--Advanced GROUP BY with CASE WHEN
    -- Problem : Group Trades by Exchange and Classify Total Quantities as 'high' or 'Low' 
    
    SELECT Exchange, 
       SUM(Qty) AS TotalQty,
       CASE 
           WHEN SUM(Qty) > 50000 THEN 'High Volume'
           ELSE 'Low Volume'
       END AS VolumeCategory
    FROM tblData
    GROUP BY Exchange;

    -- In Result We will get Exchnage whose TotalQty > 50000 as 'HightVolume' , Total < =50000 as LowQty.

--------------------------------------------------------------------------------------------------------------------------------------------------

-- Advance GROUP BY with ROLL UP (For Subtotals)
    -- Fidn total Quantity per Exchnage, with a grand total
    SELECT Exchnage , SUM(Qty) AS TotalQty 
    FROM tblDataGROUP BY  ROLLUP(Exchange);

    -- Result , Data Will Get Filter By Total Exchnage Code with Sum of Qty , Last Row with Display the Grand Total.

--------------------------------------------------------------------------------------------------------------------------------------------------

-- Advance GROUP BY With CUBe (For ALL Possible Combinations)
    -- Find total quantities per Exchnage and ProductCode with all combinations

    SELECT Exchnage , ProductCode , SUM(Qty) AS TotalQty 
    FROM tblData
    GROUP BY CUBE(Exchange , ProductCode)

    -- In Result , We will get all the Exchnage code With Total Qty , All The PRoduct Code With Total Qty , All The Combination of Exchange and Product  with Total Qty.

--------------------------------------------------------------------------------------------------------------------------------------------------
