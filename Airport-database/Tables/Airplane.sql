CREATE TABLE [dbo].[Airplane]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [company] NVARCHAR(50) NOT NULL, 
    [model] NVARCHAR(50) NOT NULL, 
    [seats] INT NOT NULL
)
