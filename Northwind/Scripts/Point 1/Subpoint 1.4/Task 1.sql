﻿-- В таблице Products найти все продукты (колонка ProductName),
-- где встречается подстрока 'chocolade'. Известно, что в подстроке 'chocolade'
-- может быть изменена одна буква 'c' в середине - найти все продукты,
-- которые удовлетворяют этому условию

SELECT
  ProductName
FROM Products
WHERE ProductName LIKE '%cho_olade%'
