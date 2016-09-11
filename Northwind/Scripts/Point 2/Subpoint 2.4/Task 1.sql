-- Выдать всех поставщиков (колонка CompanyName в таблице Suppliers), у которых нет хотя бы одного продукта на складе
-- (UnitsInStock в таблице Products равно 0). Использовать вложенный SELECT для этого запроса с использованием оператора IN

SELECT
  S.CompanyName
FROM Suppliers AS S
WHERE
  (
    SELECT
      COUNT(UnitsInStock)
    FROM Products
    WHERE SupplierID = S.SupplierID
  ) IN (0)
