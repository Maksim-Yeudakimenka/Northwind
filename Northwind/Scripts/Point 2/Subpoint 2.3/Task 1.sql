-- Определить продавцов, которые обслуживают регион 'Western' (таблица Region)

SELECT DISTINCT
  E.LastName + ' ' + E.FirstName AS Seller,
  R.RegionDescription AS Region
FROM Employees AS E
  INNER JOIN EmployeeTerritories AS ET
    ON E.EmployeeID = ET.EmployeeID
  INNER JOIN Territories AS T
    ON ET.TerritoryID = T.TerritoryID
  INNER JOIN Region AS R
    ON T.RegionID = R.RegionID
WHERE R.RegionDescription = 'Western'
