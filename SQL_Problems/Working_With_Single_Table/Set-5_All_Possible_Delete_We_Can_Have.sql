-- Delete ALL Data FROm the table
    Query : DELETE FROM tblData -- Remove all the Data from table
    Query : TRUNCATE TABLE tblData --Remove all the Data from table and reset identity column

--------------------------------------------------------------------------------------------------------------------------------------------------

-- Delete Duplicate Records 
    --a: Delete Exact Duplicates(All Columns Are The Same)
       WITH CTE AS (
                    SELECT *, 
                    ROW_NUMBER() OVER (PARTITION BY MemberCode, ScripCode, Exchange, ProductCode, ScripName, Qty, RecordInsertedTime ORDER BY (SELECT NULL)) AS rn 
                    FROM tblData
                )
        DELETE FROM tblData
        WHERE MemberCode IN (SELECT MemberCode FROM CTE WHERE rn > 1)

        -- Added Rank To all Duplicate Data in Increment way
        -- Then delelte all those Whose Value is Greater Then 1.

    --b: Delete Duplicates Based on MemberCode Keping the Latest Records
        WITH CTE AS (
                        SELECT * ,
                        ROW_NUMBER() OVER (PARTITION BY MemberCode ORDER BY RecordInsertedTime) AS rn
                        FROM tblData            
                    ) 
        DELETE FROM tblData 
        WHERE MemberCode IN (SELECT MemberCode FROM CTE WHERE rn > 1)

        -- Delete all the Reocrds For Member Whose Except The LEastets Insrted One.

--------------------------------------------------------------------------------------------------------------------------------------------------

-- DELETE On basis Of Consition
    -- a : Some Basic  Query 
            DELETE FROM tblData WHERE Exchange = 2;
            DELETE FROM tblData WHERE ProductCode = 16;
            DELETE FROM tblData WHERE Qty > 20000;
            DELETE FROM tblData WHERE ScripName LIKE 'A%';
            DELETE FROM tblData WHERE MemberCode IN ('M001', 'M002', 'M003');
            DELETE FROM tblData WHERE MemberCode NOT IN ('M001', 'M002', 'M003');
            DELETE FROM tblData WHERE RecordInsertedTime < DATEADD(DAY, -30, GETDATE());

    -- b : Delete All Records Except the Most Recent 10.
            WITH CTE AS 
            (
                SELECT * , ROW_PARTITION() OVER (ORDER BY RecordInsertedTime) AS rn FROM tblData
            )
            DELETE FROM tblData WHERE rn > 10.

--------------------------------------------------------------------------------------------------------------------------------------------------

