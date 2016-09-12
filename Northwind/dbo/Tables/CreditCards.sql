CREATE TABLE [dbo].[CreditCards]
(
    [CardID] INT IDENTITY(1, 1) NOT NULL, 
    [CardNo] NVARCHAR(19) NOT NULL, 
    [EmployeeID] INT NOT NULL, 
    [ValidThrough] DATETIME NOT NULL, 
    [CardHolder] NVARCHAR(31) NOT NULL,
    CONSTRAINT [PK_CreditCards] PRIMARY KEY  CLUSTERED 
    (
    	[CardID]
    ),
    CONSTRAINT [FK_CreditCards_Employees] FOREIGN KEY 
    (
    	[EmployeeID]
    ) REFERENCES [dbo].[Employees] (
    	[EmployeeID]
    )
)
