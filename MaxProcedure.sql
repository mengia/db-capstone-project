
PREPARE GetOrderDetail FROM '
SELECT OrderID, OrderQuantity, TotalCost FROM Orders 
WHERE CustomerID = ? ';

set @id = 1; 
EXECUTE GetOrderDetail USING @id;




