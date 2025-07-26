DELIMITER $$

CREATE PROCEDURE UpdateBooking (
    IN bookingID INT,
    IN newBookingDate DATE
)
BEGIN
    UPDATE Bookings
    SET BookingDate = newBookingDate
    WHERE BookingID = bookingID;

    SELECT CONCAT('Reserva ', bookingID, ' actualizada a la fecha ', newBookingDate) AS Resultado;
END $$

DELIMITER ;

CALL UpdateBooking (9, "2022-12-17");