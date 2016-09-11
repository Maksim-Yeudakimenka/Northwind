IF NOT EXISTS
(
  SELECT
    *
  FROM INFORMATION_SCHEMA.TABLES
  WHERE TABLE_NAME = 'CreditCards'
)
BEGIN
  CREATE TABLE "CreditCards" (
    "CardID" "int" IDENTITY (1, 1) NOT NULL ,
    "CardNo" nvarchar (19) NOT NULL ,
    "EmployeeID" "int" NOT NULL ,
    "ValidThrough" "datetime" NOT NULL ,
    "CardHolder" nvarchar (31) NOT NULL ,
    CONSTRAINT "PK_CreditCards" PRIMARY KEY  CLUSTERED 
    (
    	"CardID"
    ),
    CONSTRAINT "FK_CreditCards_Employees" FOREIGN KEY 
    (
    	"EmployeeID"
    ) REFERENCES "dbo"."Employees" (
    	"EmployeeID"
    )
  )
END
