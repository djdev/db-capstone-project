USE LittleLemonDB;

DROP PROCEDURE IF EXISTS GetMaxQuantity;

DELIMITER //
CREATE PROCEDURE GetMaxQuantity()
BEGIN
    SELECT MAX(Quantity) AS MaxQuantityInOrder 
    FROM Orders;
END //
DELIMITER ;

CALL GetMaxQuantity();