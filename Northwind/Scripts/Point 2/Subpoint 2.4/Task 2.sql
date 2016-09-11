-- Выдать всех продавцов, которые имеют более 150 заказов. Использовать вложенный SELECT

SELECT
  E.LastName + ' ' + E.FirstName AS Seller
FROM Employees AS E
WHERE
  (
    SELECT
      COUNT(*)
    FROM Orders
    WHERE EmployeeID = E.EmployeeID
  ) > 150
