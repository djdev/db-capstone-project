USE LittleLemonDB;

DROP PROCEDURE IF EXISTS CancelBooking;

DELIMITER //
CREATE PROCEDURE CancelBooking(IN Booking_ID INT)
BEGIN
    DELETE FROM Bookings
    WHERE BookingID = Booking_ID;
    
    SELECT CONCAT("Booking ", Booking_ID, " cancelled") AS Confirmation;
END //

DELIMITER ;

CALL CancelBooking(9);

SELECT * FROM Bookings;