DELIMITER $$

CREATE PROCEDURE AddBooking (
    IN bookingID INT,
    IN customerID INT,
    IN bookingDate DATE,
    IN tableNum INT
)
BEGIN
    INSERT INTO Bookings (BookingID, CustomerID, BookingDate, TableNumber)
    VALUES (bookingID, customerID, bookingDate, tableNum);

    SELECT 'Reserva añadida correctamente.' AS Resultado;
END $$

DELIMITER ;

CALL AddBooking (9, 3, '2022-12-30', 4);