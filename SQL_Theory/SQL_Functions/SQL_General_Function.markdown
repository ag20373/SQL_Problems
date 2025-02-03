1.  ROW_Number() : Assigns a unique, sequential number to each row within a partition of a result set. 
The numbering starts at 1 and increases by 1 for each row in the specified order.

Example : Column1 Column2 ... columnN ROW_Number()
			A		A			A		1
			B		B			B		2
			C		C			C		3

///////////////////////////////////////////////////////////////////////////////////////////////

2. COUNT(*) / COUNT(Column) : Get us Total  number of rows or rows Based upon the Column Value.

///////////////////////////////////////////////////////////////////////////////////////////////

3. DATEDIFF(DAY ,Column1 , Column2) = Value
   
   Example : DATEDIFF(DAY ,Date1 ,Date2) = 1.
			 Date1 and Date2 and Columns Contains all the Date .
			 "= 1" Consider Only Those Date where Value is Difference is 1.
			 "Day" Means Conpare Date,
			 "Month" Means Compare Month,
			 "Year" Means comapre Year.

///////////////////////////////////////////////////////////////////////////////////////////////

4. IFNULL(Condition , 0) :- Will get us Condition if Not Null else 0.

///////////////////////////////////////////////////////////////////////////////////////////////

5. ROUND(Value , 2) :- Will Round the Value to 2 decimal.

//////////////////////////////////////////////////////////////////////////////////////////////

6. ISNULL(M.Name,'No Manager') :- This function will return No Manager ,if we get null in columnN

//////////////////////////////////////////////////////////////////////////////////////////////

7. COALESCE(FirstName, MiddleName, LastName ,'No Value') AS Name : This function will Return the First Non Null Value.
																    FirstName -> MiddleName -> LastName -> No Value