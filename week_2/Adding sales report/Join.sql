USE LittleLemonDB;

SELECT
    Customers.CustomerID AS CustomerID,
    Customers.FullName AS FullName,
    Orders.OrderID AS OrderID,
    Orders.TotalCost AS TotalCost,
    Menus.MenuName AS MenuName,
    MenuItems.CourseName AS CourseName
FROM Customers
JOIN Orders
	ON Orders.Customer_ID = Customers.CustomerID
JOIN Menus
	USING (MenuID)
JOIN MenuItems
	USING (MenuItemID)
WHERE Orders.TotalCost > 150;