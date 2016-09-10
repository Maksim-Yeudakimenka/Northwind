-- Выбрать всех заказчиков из таблицы Customers, у которых название страны
-- начинается на буквы из диапазона b и g. Использовать оператор BETWEEN.
-- Проверить, что в результаты запроса попадает Germany. Запрос должен возвращать
-- только колонки CustomerID и Country и отсортирован по Country

SELECT
  CustomerID,
  Country
FROM Customers
WHERE LEFT(Country, 1) BETWEEN 'B' AND 'G'
ORDER BY Country
