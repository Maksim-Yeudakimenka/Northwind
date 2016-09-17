-- Найти количество покупателей, которые живут в одном городе

SELECT
  City,
  COUNT(*) AS 'Customer Count'
FROM Customers
GROUP BY City
ORDER BY 'Customer Count'
