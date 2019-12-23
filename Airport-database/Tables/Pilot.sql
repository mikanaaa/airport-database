CREATE TABLE [dbo].[Pilot]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1), 
    [first_name] NVARCHAR(50) NOT NULL, 
    [last_name] NVARCHAR(50) NOT NULL, 
    [pay] DECIMAL(12, 2) NOT NULL
)
