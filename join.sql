SELECT Customers.CustomerID, CONCAT(Customers.FirstName, ' ', Customers.LastName) AS "Full Name",
 Orders.OrderID, Orders.TotalCost, Menus.Courses, Menus.Starters, MenuItem.ItemName 
 FROM Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
 INNER JOIN Menus ON Orders.MenuID = Menus.MenuID
 INNER JOIN MenuItem ON Orders.MenuItemID = MenuItem.MenuItemID
 WHERE Orders.TotalCost > 150
 ORDER BY Orders.TotalCost;