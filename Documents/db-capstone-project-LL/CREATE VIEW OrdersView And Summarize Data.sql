CREATE VIEW OrdersView AS
SELECT o.OrdersID, od.Quantity, o.TotalCost
FROM Orders o
INNER JOIN ordersdetails od ON o.OrdersID = od.OrderID
WHERE od.Quantity > 2;
SELECT * FROM OrdersView;


SELECT 
    c.CustomerID,
    c.FullName,
    o.OrdersID AS OrderID,
    o.TotalCost,
    mi.Name AS MenuItem,
    mi.Category
FROM Customer c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID
INNER JOIN OrdersDetails od ON o.OrdersID = od.OrderID
INNER JOIN MenuItem mi ON od.ItemID = mi.ItemID
WHERE o.TotalCost > 150
ORDER BY o.TotalCost ASC;


SELECT Name AS MenuItem
FROM MenuItem
WHERE ItemID = ANY (
    SELECT ItemID
    FROM OrdersDetails
    WHERE Quantity > 2
);

