USE LittleLemonDB;

DROP PROCEDURE IF EXISTS AddBooking;

DELIMITER //
CREATE PROCEDURE AddBooking(IN Booking_ID INT, IN Table_Number INT, IN Customer_ID INT, IN Staff_ID INT, IN Booking_Date DATE)
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
        SELECT "New booking was not added due to data issues" AS Confirmation;
    ELSE
        COMMIT;
        SELECT "New booking added" AS Confirmation;
    END IF;
END //


DELIMITER ;

CALL AddBooking(9, 3, 4, 4, '2022-12-30');

SELECT * FROM Bookings;