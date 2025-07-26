DELIMITER $$

CREATE PROCEDURE CancelBooking (
    IN bookingID INT
)
BEGIN
    DELETE FROM Bookings
    WHERE BookingID = bookingID;

    SELECT CONCAT('Reserva ', bookingID, ' cancelada correctamente.') AS Resultado;
END $$

DELIMITER ;

CALL CancelBooking(9);