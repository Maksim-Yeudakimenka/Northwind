-- По таблице Employees найти для каждого продавца его руководителя.

-- Using Subquery

SELECT
  E.LastName + ' ' + E.FirstName AS Employee,
  (
    SELECT
      LastName + ' ' + FirstName
    FROM Employees
    WHERE EmployeeID = E.ReportsTo
  ) AS 'Manager'
FROM Employees AS E

-- Using JOIN

SELECT
  E1.LastName + ' ' + E1.FirstName AS Employee,
  E2.LastName + ' ' + E2.FirstName AS Manager
FROM Employees AS E1
  LEFT OUTER JOIN Employees AS E2
    ON E1.ReportsTo = E2.EmployeeID
