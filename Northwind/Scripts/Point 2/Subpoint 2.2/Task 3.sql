-- По таблице Orders найти количество заказов, сделанных каждым продавцом
-- и для каждого покупателя. Необходимо определить это только для заказов,
-- сделанных в 1998 году

SELECT
  (
    SELECT
      LastName + ' ' + FirstName
    FROM Employees
    WHERE EmployeeID = O.EmployeeID
  ) AS Seller,
  O.CustomerID AS Customer,
  COUNT(*) AS 'Order Count'
FROM Orders AS O
WHERE YEAR(O.OrderDate) = 1998
GROUP BY O.EmployeeID, O.CustomerID
