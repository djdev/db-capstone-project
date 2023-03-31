USE LittleLemonDB;

DROP PROCEDURE IF EXISTS CheckBooking;

DELIMITER //
CREATE PROCEDURE CheckBooking(IN Booking_Date DATE, IN Table_Number INT)
BEGIN
    SELECT
        CASE
            WHEN BookingDate = Booking_Date AND TableNumber = Table_Number
            THEN CONCAT("Table ", TableNumber, " is already booked.")
            ELSE CONCAT("Table ", TableNumber, " is open.")
        END AS 'Booking Status'
    FROM Bookings
    WHERE BookingDate = Booking_Date OR TableNumber = Table_Number
    LIMIT 1;
END //

DELIMITER ;

CALL CheckBooking('2022-11-12', 3);
