INSERT INTO Staff (StaffID, FullName, Role, Salary) VALUES
(1, 'Ana Martínez', 'Manager', 3500.50),
(2, 'Luis Pérez', 'Waiter', 1500.00),
(3, 'Carla Gómez', 'Chef', 2800.75),
(4, 'Juan Ramírez', 'Bartender', 1800.25),
(5, 'Marta Sánchez', 'Cleaner', 1200.00);

INSERT INTO Customer (CustomerID, FullName, ContactNumber, Email) VALUES
(1, 'Diego López', '5551234567', 'diego.lopez@mail.com'),
(2, 'Laura Torres', '5559876543', 'laura.torres@mail.com'),
(3, 'Pedro Sánchez', '5556781234', 'pedro.sanchez@mail.com'),
(4, 'Julia Méndez', '5554567890', 'julia.mendez@mail.com'),
(5, 'Carlos Ruiz', '5552345678', 'carlos.ruiz@mail.com');

INSERT INTO Bookings (BookingID, BookingDate, TableNumber, CustomerID) VALUES
(1, '2025-07-26', 5, 1),
(2, '2025-07-27', 3, 2),
(3, '2025-07-28', 7, 3),
(4, '2025-07-29', 2, 4),
(5, '2025-07-30', 4, 5);

INSERT INTO MenuItem (ItemID, Name, Category, Price) VALUES
(1, 'Burger', 'MainCourse', 8.99),
(2, 'Caesar Salad', 'Starter', 5.50),
(3, 'Cola', 'Drink', 2.00),
(4, 'Chocolate Cake', 'Dessert', 4.75),
(5, 'Coffee', 'Drink', 2.50);

INSERT INTO Orders (OrdersID, OrderDate, CustomerID, StaffID, TotalCost) VALUES
(1, '2025-07-26 12:30:00', 1, 2, 20.49),
(2, '2025-07-26 13:00:00', 2, 3, 14.25),
(3, '2025-07-26 13:30:00', 3, 4, 12.50),
(4, '2025-07-26 14:00:00', 4, 1, 18.25),
(5, '2025-07-26 14:30:00', 5, 5, 7.00);

INSERT INTO OrdersDetails (OrderDetailID, OrderID, ItemID, Quantity) VALUES
(1, 1, 1, 1),
(2, 1, 3, 2),
(3, 2, 2, 1),
(4, 3, 4, 1),
(5, 4, 5, 3);

INSERT INTO OrdersDeliveryStatus (DeliveryID, OrderID, DeliveryDate, Status) VALUES
(1, 1, '2025-07-26', 'Delivered'),
(2, 2, '2025-07-26', 'Pending'),
(3, 3, '2025-07-26', 'Delivered'),
(4, 4, '2025-07-26', 'In Transit'),
(5, 5, '2025-07-26', 'Cancelled');
