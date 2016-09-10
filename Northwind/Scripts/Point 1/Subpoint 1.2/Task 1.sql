﻿-- Выбрать из таблицы Customers всех заказчиков, проживающих в USA и Canada.
-- Запрос сделать с только помощью оператора IN. Возвращать колонки с именем пользователя
-- и названием страны в результатах запроса. Упорядочить результаты запроса по имени заказчиков
-- и по месту проживания

SELECT
  ContactName,
  Country
FROM Customers
WHERE Country IN ('USA', 'Canada')
ORDER BY ContactName, Country
