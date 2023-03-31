USE LittleLemonDB;

SELECT * FROM MenuItems;

/* INSERT INTO MenuItems (MenuItemID, Name, Type, Price)
VALUES
(1, 'Olives', 'Starters', 5),
(2, 'Flatbread', 'Starters', 5),
(3, 'Minestrone', 'Starters', 8),
(4, 'Tomato bread','Starters', 8),
(5, 'Falafel', 'Starters', 7),
(6, 'Hummus', 'Starters', 5),
(7, 'Greek salad', 'Main Courses', 15),
(8, 'Bean soup', 'Main Courses', 12),
(9, 'Pizza', 'Main Courses', 15),
(10, 'Greek yoghurt', 'Desserts', 7),
(11, 'Ice cream', 'Desserts', 6),
(12, 'Cheesecake', 'Desserts', 4),
(13, 'Athens White wine', 'Drinks', 25),
(14, 'Corfu Red Wine', 'Drinks', 30),
(15, 'Turkish Coffee', 'Drinks', 10),
(16, 'Turkish Coffee', 'Drinks', 10),
(17, 'Kabasa', 'Main Courses', 17); */

INSERT INTO MenuItems (MenuItemID, CourseName, StarterName, DessertName)
VALUES
(1, 'Imam Bayildi', 'Horiatiki Salata', 'Baklava'),
(2, 'Lamb Stifado', 'Halloumi Fries', 'Halvas'),
(3, 'Giouvetsi With Lamb', 'Spanakopita', 'Karydopita'),
(4, 'Moschari Lemonato', 'Greek Chicken Meatballs', 'Samali'),
(5, 'Makaronia Me Kima', 'Tiropitakia', 'Galaktoboureko'),
(6, 'Arakas Laderos Kokkinistos', 'Halloumi Kebabs', 'Loukoumades'),
(7, 'Bacon Risotto', 'Potato Focaccia Rolls', 'Tiramisu'),
(8, 'Sicilian-Style Swordfish', 'Pan-fried Scamorza', 'Panna Cotta'),
(9, 'Spinach Ricotta Gnudi', 'Prosciutto Bruschetta', 'Espresso Martini'),
(10, 'Beef Brasato', 'Antipasto Sandwiches', 'Mini Cannoli'),
(11, 'Fish Artichoke Caponata', 'Fritto Misto', 'Bomboloni'),
(12, 'Three-Cheese Lasagna', 'Carbonara Arancini', 'Biscotti'),
(13, 'Mucver', 'Acili ezme', 'Sutlac'),
(14, 'Mercimek Corbasi', 'Sigara Boregi', 'Incir Uyutmasi'),
(15, 'Kuzu Tandir', 'Yaprak Sarmasi', 'Irmik Helvasi'),
(16, 'Sis Kebabs', 'Kisir', 'Salep'),
(17, 'Kofte', 'Gavurdagi Salatasi', 'Kunefe'),
(18, 'Lahmacun', 'Imam Bayildi', 'Turkish Coffee');

SELECT * FROM Menus;

INSERT INTO Menus (MenuID, MenuItemID, MenuName, Cuisine)
VALUES
(1, 1, 'Fava', 'Greek'),
(2, 7, 'Souvlaki', 'Greek'),
(3, 10, 'Briam', 'Greek'),
(4, 13, 'Tzatziki', 'Greek'),
(5, 3, 'Aperitivo', 'Italian'),
(6, 9, 'Antipasti', 'Italian'),
(7, 12, 'Dolce', 'Italian'),
(8, 15, 'Formaggi e frutta', 'Italian'),
(9, 5, 'Mantı', 'Turkish'),
(10, 17, 'Doner', 'Turkish'),
(11, 11, 'Kebab', 'Turkish'),
(12, 16, 'Durum', 'Turkish');

SELECT * FROM Customers;

INSERT INTO Customers
VALUES
(1, 'Vanessa McCarthy', 757536378, 'vm@mangatagallo.com'),
(2, 'Marcos Romero', 757536379, 'mr@mangatagallo.com'),
(3, 'Hiroki Yamane', 757536376, 'hy@mangatagallo.com'),
(4, 'Anna Iversen', 757536375, 'ai@mangatagallo.com'),
(5, 'Diana Pinto', 757536374, 'dp@mangatagallo.com'),
(6, 'Joakim Iversen', 757536377, 'ji@mangatagallo.com');

SELECT * FROM Roles;

INSERT INTO Roles (RoleID, Title, AnnualSalary)
VALUES
    (1, 'Manager', '$70,000'),
    (2, 'Receiptionist', '$35,000'),
    (3, 'Assistant Chef', '$45,000'),
    (4, 'Head Waiter', '$40,000'),
    (5, 'Assistant Manager', '$65,000'),
    (6, 'Head Chef', '$50,000');

SELECT * FROM Staff;

INSERT INTO Staff (StaffID, RoleID, StaffName, Address, ContactNumber, Email)
VALUES
    (1, 1, 'Mario Gollini', '724, Parsley Lane, Old Town, Chicago, IL', '351258074', 'Mario.g@littlelemon.com'),
    (2, 5, 'Adrian Gollini', '334, Dill Square, Lincoln Park, Chicago, IL', '351474048', 'Adrian.g@littlelemon.com'),
    (3, 6, 'Giorgos Dioudis', '879 Sage Street, West Loop, Chicago, IL', '351970582', 'Giorgos.d@littlelemon.com'),
    (4, 3, 'Fatma Kaya', '132  Bay Lane, Chicago, IL', '351963569', 'Fatma.k@littlelemon.com'),
    (5, 4, 'Elena Salvai', '989 Thyme Square, EdgeWater, Chicago, IL', '351074198', 'Elena.s@littlelemon.com'),
    (6, 2, 'John Millar', '245 Dill Square, Lincoln Park, Chicago, IL', '351584508', 'John.m@littlelemon.com');

SELECT * FROM Bookings;

INSERT INTO Bookings (BookingID, TableNumber, StaffID, GuestFirstName, GuestLastName, BookingSlot)
VALUES
    (1, 4, 1, 'Anna', 'Iversen', '19:00:00'),
    (2, 4, 1, 'Joakim', 'Iversen', '19:00:00'),
    (3, 2, 3, 'Vanessa', 'McCarthy', '15:00:00'),
    (4, 7, 4, 'Marcos', 'Romero', '17:30:00'),
    (5, 5, 2, 'Hiroki', 'Yamane', '18:30:00'),
    (6, 1, 5, 'Diana', 'Pinto', '20:00:00');

SELECT * FROM Deliveries;

INSERT INTO Deliveries (DeliveryID, DeliveryDate, DeliveryStatus)
VALUES
    (1, '2022-10-17 00:00:00', 'Done'),
    (2, '2022-10-17 00:00:00', 'Done'),
    (3, '2022-10-19 00:00:00', 'Done'),
    (4, '2022-10-20 03:30:00', 'Pending'),
    (5, '2022-10-21 12:10:00', 'Pending');

SELECT * FROM Orders;

INSERT INTO Orders (OrderID, MenuID, BookingID, CustomerID, DeliveryID, OrderDate, TotalCost, Quantity)
VALUES
    (1, 1, 3, 4, 2, '2022-10-16 15:30:00', 86, 2),
    (2, 3, 5, 2, 1, '2022-10-16 20:45:00', 37, 1),
    (3, 2, 2, 3, 5, '2022-10-20 9:10:00', 55, 1),
    (4, 1, 1, 5, 4, '2022-10-19 22:30:00', 46, 1),
    (5, 3, 4, 1, 3, '2022-10-18 16:25:00', 89, 2);

CREATE VIEW OrdersView AS
SELECT OrderID, Quantity, TotalCost AS Cost
FROM Orders
WHERE Quantity >= 2;

# Task 1
SELECT * FROM OrdersView;



