CREATE TABLE [dbo].[License]
(
	[pilot_id] INT NOT NULL, 
    [airplane_id] INT NOT NULL, 
    [expiry] DATE NOT NULL, 
    CONSTRAINT [FK_License_ToPilot] FOREIGN KEY ([pilot_id]) REFERENCES [Pilot]([id]), 
    CONSTRAINT [FK_License_ToAirplane] FOREIGN KEY ([airplane_id]) REFERENCES [Airplane]([id]) 
)
