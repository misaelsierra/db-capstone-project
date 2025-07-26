DELIMITER //

CREATE PROCEDURE GetMaxQuantity()
BEGIN
    SELECT MAX(Quantity) AS MaxOrderedQuantity
    FROM OrdersDetails;
END //

DELIMITER ;

CALL GetMaxQuantity();
