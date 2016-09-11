-- Выдать в результатах запроса имена всех заказчиков из таблицы Customers
-- и суммарное количество их заказов из таблицы Orders. Принять во внимание,
-- что у некоторых заказчиков нет заказов, но они также должны быть выведены в результатах запроса.
-- Упорядочить результаты запроса по возрастанию количества заказов

SELECT
  C.ContactName,
  COUNT(O.OrderID) AS 'Total Orders'
FROM Customers AS C
  LEFT OUTER JOIN Orders AS O
    ON C.CustomerID = O.CustomerID
GROUP BY C.ContactName
ORDER BY 'Total Orders'
