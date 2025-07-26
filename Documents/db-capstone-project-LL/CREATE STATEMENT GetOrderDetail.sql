-- Step 1: Declare and assign the variable
SET @id = 1;

-- Step 2: Prepare the statement
PREPARE GetOrderDetail FROM 
'
SELECT o.OrdersID, od.Quantity, o.TotalCost AS OrderCost
FROM Orders o
JOIN OrdersDetails od ON o.OrdersID = od.OrderID
WHERE o.CustomerID = ?
';
