DELIMITER //

CREATE PROCEDURE CancelOrder(IN inputOrderID INT)
BEGIN
    DELETE FROM Orders
    WHERE OrdersID = inputOrderID;
END //

DELIMITER ;

CALL CancelOrder(5);  -- Cancels the order with ID = 5

DROP PROCEDURE IF EXISTS CancelOrder;