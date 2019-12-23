CREATE TABLE [dbo].[Flight_History]
(
	[flight_id] INT NOT NULL , 
    [airplane_id] INT NOT NULL, 
    [pilot_id] INT NOT NULL, 
    [start] DATETIME2 NOT NULL, 
    [end] DATETIME2 NOT NULL, 
    [seats_filled] INT NOT NULL, 
    CONSTRAINT [FK_Flight_History_ToFlight] FOREIGN KEY ([flight_id]) REFERENCES [Flight]([id]), 
    CONSTRAINT [FK_Flight_History_ToAirplane] FOREIGN KEY ([airplane_id]) REFERENCES [Airplane]([id]), 
    CONSTRAINT [FK_Flight_History_ToPilot] FOREIGN KEY ([pilot_id]) REFERENCES [Pilot]([id])
)
