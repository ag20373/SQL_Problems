-- Problem : Write a solution to delete all duplicate emails, keeping only one unique email with the smallest id.

-- Data : 
            --1. Given a Table Person ,With id and email 
            --2. email can have Duplicates.

-- Query 1 : 
           DELETE p2 FROM Person AS p1 INNER  JOIN Person AS p2 
           ON p1.Email = p2.Email AND p1.id < p2.id

-- Exmplanation : 
           --1. We want to Remove the Duplicates from the Table
           --2. We join the table with Itself.
           --3. Only Compare Those Whose Email is same in both p1 and p2
           --4. Then Check if the id of p1 > id of p2 
           --5. If true, then Select that recrd Delete...

-- Query 2 : 
            DELETE FROM Person 
            WHERE id IN (
                            SELECT a.id
                            FROM (
                                    SELECT id, email, ROW_NUMBER() OVER (PARTITION BY email ORDER BY id) AS rn
                                    FROM Person
                                ) a 
                            WHERE a.rn > 1
                        );

-- Explanation : 
            --1. We First Assign the Row Number Based Upon email From Inner Query
                    --email     rn
                    -- a        1
                    -- a        2
                    -- a        3
                    -- b        1
                    -- b        2
                    -- c        1

            --2. Then Select , All those Id's Where row number > 1
            --3. Last Delete From table.

-- Learning : 
            --1. ROW_Number() OVER (PARTITION BY "duplicate_Column" ORDER BY "Unique_Column")
            --2. Delete Using Self Join.