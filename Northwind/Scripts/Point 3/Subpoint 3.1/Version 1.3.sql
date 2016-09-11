IF EXISTS
(
  SELECT
    *
  FROM INFORMATION_SCHEMA.TABLES
  WHERE TABLE_NAME = 'Region'
)
BEGIN
  EXEC sp_rename 'Region', 'Regions'
END

IF NOT EXISTS
(
  SELECT
    *
  FROM sys.columns 
  WHERE Name = 'FoundedDate'
    AND Object_ID = Object_ID('Customers')
)
BEGIN
  ALTER TABLE Customers
  ADD FoundedDate DATETIME NULL
END
