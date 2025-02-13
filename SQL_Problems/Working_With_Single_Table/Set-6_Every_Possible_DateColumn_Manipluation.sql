-- SELECT Query 
    --a . Select All Records Sorted by Insertion Time (Ascending/Descending)
    SELECT * FROM tblData ORDER BY RecordInsertedTime ASC;  -- Oldest First
    SELECT * FROM tblData ORDER BY RecordInsertedTime DESC; -- Newest First

    --b . Select Only Date Part of the RecordInsertedTime
    SELECT RecordInsertedTime ,CAST(RecordInsertedTime AS DATE) AS OnlyDate FROM tblData -- Removes Time ,Gets Date only

    --c . Select Only Time Part of the RecordInsertTime
    SELECT RecordInsertedTime, CAST(RecordInsertedTime AS TIME) AS OnlyTime FROM tblData; -- Remove the Date Part

    --d. Select Records Inserted Today
    SELECT * FROM tblData WHERE CAST(RecordInsertedTime AS DATE) = CAST(GETDATE() AS DATE) 

    --e. Select Only Records Insrted in last 7 days.
    SELECT * FROM tblData WHERE RecordInsertedTime >= DATEADD(DAY , -7 ,GETDATE());

-------------------------------------------------------------------------------------------------------------------------------------------------

-- GROUP BY on RecordInsertedTime
    --a. Count Records Inserted on Each Date
        SELECT CAST(RecordInsertedTime AS DATE) AS InsertDate ,COUNT(*) AS RecordCount FROM tblData 
        GROUP BY CAST(RecordInsertedTime AS DATE)

    --b. Count Records Per Hour
        SELECT  DATEPART(HOUR, RecordInsertedTime) AS InsertHour ,COUNT(*) AS CountPerHour FROM tblData
        GROUP BY DATEPART(HOUR , RecordInsertedTime) ORDER BY InsertHour

--------------------------------------------------------------------------------------------------------------------------------------------------

-- DELETE Query Using RecordInsertedTime
    DELETE FROM tblData WHERE RecordInsertedTime < DATEADD(DAY, -30, GETDATE()); -- Delete Last 30 Days Records

    DELETE FROM tblData WHERE RecordInsertedTime < DATEADD(DAY, -10, GETDATE()); -- Delete Last 10 Days Records

    DELETE FROM tblData WHERE CAST(RecordInsertedTime AS DATE) = CAST(GETDATE() AS DATE); -- Delete Only todays Records

    DELETE FROM tblData WHERE RecordInsertedTime = (SELECT MIN(RecordInsertedTime) FROM tblData); -- Delete the Oldest Record.

--------------------------------------------------------------------------------------------------------------------------------------------------

-- 