-- SELECT FirstName,
--   OrderID
-- FROM Customer
--   JOIN Orders ON Customer.CustomerID = Orders.OrderID;
SELECT Customer.CustomerID,
  FirstName,
  LastName,
  Sum(TotalDue)
FROM Customer
  JOIN Orders ON Customer.CustomerID = Orders.OrderID
GROUP BY CustomerID,
  FirstName,
  LastName
ORDER BY Sum(TotalDue) DESC
LIMIT 25
