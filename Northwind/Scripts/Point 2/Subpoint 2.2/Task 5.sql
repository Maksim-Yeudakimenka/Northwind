-- Найти всех покупателей, которые живут в одном городе

SELECT
  CustomerID,
  ContactName,
  City
FROM Customers
ORDER BY City
