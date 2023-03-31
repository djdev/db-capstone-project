USE LittleLemonDB;

DROP PROCEDURE IF EXISTS CancelOrder;

DELIMITER //

CREATE PROCEDURE CancelOrder(IN Order_ID INT)
BEGIN
    DELETE FROM Orders
    WHERE OrderID = Order_ID;
END //

DELIMITER ;

CALL CancelOrder(4);
