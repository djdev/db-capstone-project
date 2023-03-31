USE LittleLemonDB;

SET @id = 1;

PREPARE GetOrderDetail
FROM 'SELECT OrderID, Quantity, TotalCost AS Cost FROM Orders WHERE Customer_ID = ?';

EXECUTE GetOrderDetail using @id;
