-- По таблице Employees найти для каждого продавца его руководителя.

SELECT
  E.LastName + ' ' + E.FirstName AS Employee,
  (
    SELECT
      LastName + ' ' + FirstName
    FROM Employees
    WHERE EmployeeID = E.ReportsTo
  ) AS 'Manager'
FROM Employees AS E
