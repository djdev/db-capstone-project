USE LittleLemonDB;

DELETE FROM Bookings;

INSERT INTO Bookings (BookingID, BookingDate, TableNumber, CustomerID, StaffID)
VALUES
    (1, '2022-10-10', 5, 1, 6),
    (2, '2022-11-12', 3, 3, 4),
    (3, '2022-10-11', 2, 2, 3),
    (4, '2022-10-13', 2, 1, 4);
    
SELECT * FROM Bookings;