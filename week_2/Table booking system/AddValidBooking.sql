USE LittleLemonDB;

DROP PROCEDURE IF EXISTS AddValidBooking;

DELIMITER //

CREATE PROCEDURE AddValidBooking(IN Booking_ID INT, IN Booking_Date DATE, IN Table_Number INT, IN Customer_ID INT, IN Staff_ID INT)
BEGIN
    -- Track count of existing bookings found
    DECLARE BookingCount INT DEFAULT 0;
    
    -- Query if booking with give date and table number exists
    SELECT COUNT(BookingID) INTO BookingCount
    FROM Bookings
    WHERE BookingID = Booking_ID AND BookingDate = Booking_Date AND TableNumber = Table_Number AND CustomerID = Customer_ID AND StaffID = Staff_ID;
    
    START TRANSACTION;
    
    INSERT INTO Bookings (BookingID, BookingDate, TableNumber, CustomerID, StaffID)
    VALUES (Booking_ID, Booking_Date, Table_Number, Customer_ID, Staff_ID);
    
    
    -- If booking with same date and table number is found then rollback transaction, else commit transaction
    IF BookingCount <> 0 THEN
        ROLLBACK;
    ELSE
        COMMIT;
    END IF;
END //

DELIMITER ;

CALL AddValidBooking(2, '2022-11-12', 3, 3, 4); -- Error. Not committed
CALL AddValidBooking(5, '2022-12-17', 6, 6, 2); -- Committed

SELECT * FROM Bookings;
