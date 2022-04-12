use AdventureWorks2019;



/*
Add 5 hours to the vacation hours of the Sales Representative employees who are married. 
Look at the [HumanResources].[Employee] table. With a select query decide which column you have to change. 
 Then after changing the column's values, retrieve the original values again.


*/


update HumanResources.Employee
set 
HumanResources.Employee.VacationHours=HumanResources.Employee.VacationHours+5
where HumanResources.Employee.MaritalStatus='M';
update HumanResources.Employee
set HumanResources.Employee.VacationHours=HumanResources.Employee.VacationHours-5
where HumanResources.Employee.MaritalStatus='M';





/*
We need to get the names of the products and their Ids (from the Product table)

and their price history (from ProductListPriceHistory table).

Even if a product does not have a price history, include it in the results (with a NULL value for the price history).
Sort the results by the product name.
Add the number of affected rows after your query.
(Use ProductListPriceHistory and Product table for the query).

Tip: First product will be 'Adjustable Race'.
*/

select Production.Product.ProductID,Production.Product.Name,Production.ProductListPriceHistory.ListPrice
from Production.Product left join Production.ProductListPriceHistory on Production.Product.ProductID=Production.ProductListPriceHistory.ProductID
order by Production.Product.Name;
-- effected rows 606