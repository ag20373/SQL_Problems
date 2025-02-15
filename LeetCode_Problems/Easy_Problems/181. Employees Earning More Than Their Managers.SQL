--Problem : Write a Solution to find  the employess earning more then their Managers. Return in any order

--Data : 
        --1. Table **Employee** has 4 columns.
        --2. id is PRimary key ,each row contain emoploye information with Respective id of manger assign to them

--Query : 
        SELECT SELECT E1.name AS Employee 
        FROM Employee AS E1 INNER JOIN Employee AS E2
        ON E1.managerId = E2.id WHERE E1.Salary > E2.Salary
 
--Explanation : 
        --1. What We need is a employee Whose is earning More hen their manager.
        --2. given only one table for all the infomation
        --3. We use the Self join concept using **inner Join** to compare a manager slalary to Employee salary.
        --4. **E1.managerId = E2.id** means we know who is the manager assign to employee and using that we are getting that manager detail.
        --5. This will bring manager Row and Employee row In one singe row 
        --6.  Then using Salary filter to get our answer.

--Lerning Concept  : 
        --1. SELF JOIN : Join same table to it self.s