-- Выдать всех заказчиков (таблица Customers), которые не имеют ни одного заказа
-- (подзапрос по таблице Orders). Использовать оператор EXISTS

SELECT
  CompanyName AS Customer
FROM Customers AS C
WHERE NOT EXISTS
(
  SELECT
    *
  FROM Orders
  WHERE CustomerID = C.CustomerID
)
