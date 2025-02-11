-- 1 . Creating a Table , IF not Exisit.

    Query : --Checking If Table Already Exist.
            IF NOT EXIST (SELECT * FROM INFORMATION_SCHEMA.TABLES 
            WHERE TABLE_NAME = 'tblData')
            BEGIN
                --Creating table 
                CREATE TABLE tblData
                (
                    MemberCode VARCHAR(10) NOT NULL,
                    ScripCode INT NOT NULL ,
                    Exchange INT NOT NULL CHECK(Exchange IN (2 ,3 ,5)),
                    ProductCode INT NOT NULL CHECK(ProductCode IN (1 ,2 ,3 ,16)),
                    ScripName VARCHAR(10),
                );

                PRINT 'Table Created'; 
            END

            ELSE
            BEGIN 
                PRINT 'Table Exist Already'; 
            END

--------------------------------------------------------------------------------------------------------------------------------------------------

-- 2 . Adding Two More Columns One is Qty  and Second is Record inseted Time 
    Query : 
            -- Checking if the column 'Qty' already exisits
            IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'tblData' AND COLUMN_NAME = 'QTY')
            BEGIN 
                ALTER TABLE tblData 
                ADD Qty BIGINT CHECK (Qty <= 50000000)

                PRINT 'Column Qty added successfully.';
            END
            ELSE
            BEGIN
                PRINT 'Column Qty already exists.';
            END;

            -- Checking if the column 'RecordInsertedTime' already exisits
            IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'tblData' AND COLUMN_NAME = 'RecordInsertedTime')
            BEGIN 
                ALTER TABLE tblData 
                ADD RecordInsertedTime DATETIME DEFAULT GETDATE();

                PRINT 'Column Qty added successfully.';
            END
            ELSE
            BEGIN
                PRINT 'Column Qty already exists.';
            END;

--------------------------------------------------------------------------------------------------------------------------------------------------

-- 3. Insert Data into Table 
    INSERT INTO tblData (MemberCode, ScripCode, Exchange, ProductCode, ScripName, Qty, RecordInsertedTime)
    VALUES 
    ('M001', 1001, 2, 1, 'ABC Ltd', 10000, GETDATE()),
    ('M002', 1002, 3, 2, 'XYZ Ltd', 20000, GETDATE()),
    ('M003', 1003, 5, 3, 'PQR Ltd', 30000, GETDATE()),
    ('M004', 1004, 2, 1, 'LMN Ltd', 5000, GETDATE()),
    ('M005', 1005, 3, 16, 'JKL Ltd', 15000, GETDATE()),
    ('M006', 1006, 5, 2, 'GHI Ltd', 25000, GETDATE()),
    ('M007', 1007, 2, 3, 'DEF Ltd', 12000, GETDATE()),
    ('M008', 1008, 3, 1, 'STU Ltd', 8000, GETDATE()),
    ('M009', 1009, 5, 16, 'VWX Ltd', 22000, GETDATE()),
    ('M010', 1010, 2, 2, 'QWE Ltd', 18000, GETDATE()),
    ('M011', 1011, 3, 3, 'RTY Ltd', 9000, GETDATE()),
    ('M012', 1012, 5, 1, 'ASD Ltd', 11000, GETDATE()),
    ('M013', 1013, 2, 16, 'FGH Ltd', 26000, GETDATE()),
    ('M014', 1014, 3, 2, 'ZXC Ltd', 17000, GETDATE()),
    ('M015', 1015, 5, 3, 'BNM Ltd', 14000, GETDATE()),
    ('M016', 1016, 2, 1, 'WER Ltd', 21000, GETDATE()),
    ('M017', 1017, 3, 16, 'RTU Ltd', 13000, GETDATE()),
    ('M018', 1018, 5, 2, 'YUI Ltd', 24000, GETDATE()),
    ('M019', 1019, 2, 3, 'OPA Ltd', 28000, GETDATE()),
    ('M020', 1020, 3, 1, 'LKI Ltd', 32000, GETDATE());



        