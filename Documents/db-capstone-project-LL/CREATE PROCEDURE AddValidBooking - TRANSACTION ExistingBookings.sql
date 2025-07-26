DELIMITER $$

CREATE PROCEDURE AddValidBooking (
    IN bookingDate DATE,
    IN tableNum INT,
    IN customerID INT
)
BEGIN
    DECLARE existingBookings INT;

    START TRANSACTION;

    -- Verifica si ya existe una reserva en esa fecha para esa mesa
    SELECT COUNT(*) INTO existingBookings
    FROM Bookings
    WHERE BookingDate = bookingDate AND TableNumber = tableNum;

    IF existingBookings > 0 THEN
        -- Si la mesa ya está reservada, cancela la transacción
        ROLLBACK;
        SELECT 'Reserva rechazada: la mesa ya está ocupada en esa fecha.' AS Resultado;
    ELSE
        -- Si la mesa está libre, crea la reserva y confirma la transacción
        INSERT INTO Bookings (TableNumber, BookingDate, CustomerID)
        VALUES (tableNum, bookingDate, customerID);

        COMMIT;
        SELECT 'Reserva registrada exitosamente.' AS Resultado;
    END IF;
END $$

DELIMITER ;