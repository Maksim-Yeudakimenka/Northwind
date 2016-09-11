-- Найти покупателей и продавцов, которые живут в одном городе.
-- Если в городе живут только один или несколько продавцов, или только один или несколько покупателей,
-- то информация о таких покупателя и продавцах не должна попадать в результирующий набор.
-- Не использовать конструкцию JOIN

SELECT
  C.ContactName AS Person,
  'Customer' AS 'Type',
  C.City
FROM Customers AS C
WHERE EXISTS
(
  SELECT
    City 
  FROM Employees
  WHERE City = C.City
)

UNION ALL

SELECT
  E.FirstName + ' ' + E.LastName AS Person,
  'Seller' AS 'Type',
  E.City
FROM Employees AS E
WHERE EXISTS
(
  SELECT
    City 
  FROM Customers
  WHERE City = E.City
)