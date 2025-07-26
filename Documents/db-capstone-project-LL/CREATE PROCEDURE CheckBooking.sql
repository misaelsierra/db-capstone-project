DELIMITER $$

CREATE PROCEDURE CheckBooking (
    IN bookingDate DATE,
    IN tableNum INT
)
BEGIN
    DECLARE bookingStatus VARCHAR(50);

    -- Verifica si existe una reserva para la mesa en la fecha indicada
    SELECT 
        CASE
            WHEN COUNT(*) > 0 THEN 'La mesa ya está reservada.'
            ELSE 'La mesa está disponible.'
        END INTO bookingStatus
    FROM Bookings
    WHERE BookingDate = bookingDate AND TableNumber = tableNum;

    -- Muestra el estado como resultado
    SELECT bookingStatus AS Estado;
END $$

DELIMITER ;

CALL CheckBooking("2022-11-12", 3);