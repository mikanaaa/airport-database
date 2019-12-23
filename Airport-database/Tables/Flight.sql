CREATE TABLE [dbo].[Flight]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [from] NVARCHAR(50) NOT NULL, 
    [to] NVARCHAR(50) NOT NULL, 
    [distance] INT NOT NULL
)
