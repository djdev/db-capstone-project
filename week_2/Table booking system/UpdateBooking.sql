USE LittleLemonDB;

DROP PROCEDURE IF EXISTS UpdateBooking;

DELIMITER //
CREATE PROCEDURE UpdateBooking(IN Booking_ID INT, IN Booking_Date DATE)
BEGIN
    UPDATE Bookings
    SET BookingDate = Booking_Date
    WHERE BookingID = Booking_ID;
    
    SELECT CONCAT("Booking ", Booking_ID, " updated") AS Confirmation;
END //

DELIMITER ;

CALL UpdateBooking(9, "2022-12-17");

SELECT * FROM Bookings;