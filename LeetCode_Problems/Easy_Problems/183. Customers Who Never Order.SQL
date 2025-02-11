--Problem : Find all the csutomer who never order anything

--Data :  
        --1. Two Table are given **Customers and Orders**
        --2. Customers Contain Total  number of customers 
        --3. Orders cantain customer who order something,

--Query : 
        SELECT name AS Customers 
        FROM Customers c LEFT JOIN Orders o 
        ON c.id = o.customerid 
        WHERE o.Customerid IS NULL

--ExplanationS: 
        --1. We wan to customers who never order.
        --2. We have table order which describes cutomers who order.
        --3. So we commbine Customer and Order
        --4. Last fetch those row whose customerid Was null.

--Lerning : 
        --1. IS NULL = mean getting those rows which are null / have nothing 