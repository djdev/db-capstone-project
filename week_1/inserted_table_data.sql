USE LittleLemonDB;

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

INSERT INTO Menus (MenuID, MenuItemID, MenuName, Cuisine)
VALUES
    (1, 1, 'Fava', 'Greek'),
    (2, 3, 'Souvlaki', 'Greek'),
    (3, 5, 'Briam', 'Greek'),
    (4, 6, 'Tzatziki', 'Greek'),
    (5, 11, 'Aperitivo', 'Italian'),
    (6, 9, 'Antipasti', 'Italian'),
    (7, 12, 'Dolce', 'Italian'),
    (8, 10, 'Formaggi e frutta', 'Italian'),
    (9, 15, 'Mantı', 'Turkish'),
    (10, 17, 'Doner', 'Turkish'),
    (11, 14, 'Kebab', 'Turkish'),
    (12, 16, 'Durum', 'Turkish');

INSERT INTO Customers
VALUES
    (1, 'Vanessa McCarthy', 757536378, 'vm@mangatagallo.com'),
    (2, 'Marcos Romero', 757536379, 'mr@mangatagallo.com'),
    (3, 'Hiroki Yamane', 757536376, 'hy@mangatagallo.com'),
    (4, 'Anna Iversen', 757536375, 'ai@mangatagallo.com'),
    (5, 'Diana Pinto', 757536374, 'dp@mangatagallo.com'),
    (6, 'Joakim Iversen', 757536377, 'ji@mangatagallo.com');

INSERT INTO Roles (RoleID, Title, AnnualSalary)
VALUES
    (1, 'Manager', '$70,000'),
    (2, 'Receiptionist', '$35,000'),
    (3, 'Assistant Chef', '$45,000'),
    (4, 'Head Waiter', '$40,000'),
    (5, 'Assistant Manager', '$65,000'),
    (6, 'Head Chef', '$50,000');

INSERT INTO Staff (StaffID, RoleID, StaffName, Address, ContactNumber, Email)
VALUES
    (1, 1, 'Mario Gollini', '724, Parsley Lane, Old Town, Chicago, IL', '351258074', 'Mario.g@littlelemon.com'),
    (2, 5, 'Adrian Gollini', '334, Dill Square, Lincoln Park, Chicago, IL', '351474048', 'Adrian.g@littlelemon.com'),
    (3, 6, 'Giorgos Dioudis', '879 Sage Street, West Loop, Chicago, IL', '351970582', 'Giorgos.d@littlelemon.com'),
    (4, 3, 'Fatma Kaya', '132  Bay Lane, Chicago, IL', '351963569', 'Fatma.k@littlelemon.com'),
    (5, 4, 'Elena Salvai', '989 Thyme Square, EdgeWater, Chicago, IL', '351074198', 'Elena.s@littlelemon.com'),
    (6, 2, 'John Millar', '245 Dill Square, Lincoln Park, Chicago, IL', '351584508', 'John.m@littlelemon.com');

INSERT INTO Bookings (BookingID, BookingDate, TableNumber, CustomerID, StaffID)
VALUES
    (1, '2022-10-10', 5, 1, 6),
    (2, '2022-11-12', 3, 3, 4),
    (3, '2022-10-11', 2, 2, 3),
    (4, '2022-10-13', 2, 1, 4);

INSERT INTO Deliveries (DeliveryID, DeliveryDate, DeliveryStatus)
VALUES
    (1, '2022-10-17 00:00:00', 'Done'),
    (2, '2022-10-17 00:00:00', 'Done'),
    (3, '2022-10-19 00:00:00', 'Done'),
    (4, '2022-10-20 03:30:00', 'Pending'),
    (5, '2022-10-21 12:10:00', 'Pending');

INSERT INTO Orders (OrderID, MenuID, Customer_ID, DeliveryID, OrderDate, TotalCost, Quantity)
VALUES
    (1, 1, 4, 2, '2022-10-16 15:30:00', 56, 1),
    (2, 3, 2, 1, '2022-10-16 20:45:00', 37, 1),
    (3, 2, 3, 5, '2022-10-20 9:10:00', 155, 4),
    (4, 1, 5, 4, '2022-10-19 22:30:00', 96, 2),
    (5, 3, 1, 3, '2022-10-18 16:25:00', 200, 5);
