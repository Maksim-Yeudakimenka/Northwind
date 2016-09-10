-- Выбрать всех заказчиков из таблицы Customers, у которых название страны
-- начинается на буквы из диапазона b и g, не используя оператор BETWEEN

SELECT
  CustomerID,
  Country
FROM Customers
WHERE LEFT(Country, 1) >= 'B' AND LEFT(Country, 1) <= 'G'
--WHERE LEFT(Country, 1) IN ('B', 'C', 'D', 'E', 'F', 'G')
ORDER BY Country
