-- Get pilots with license for specific airplane
select first_name, last_name from Pilot 
	inner join License on Pilot.id = License.pilot_id
	inner join Airplane on License.airplane_id = Airplane.id
	where Airplane.model = 'a330';
-- Get pilots with valid licenses
select distinct first_name, last_name from Pilot 
	inner join License on Pilot.id = License.pilot_id
	where License.expiry >= GETDATE();
-- Count flight between two locations
select COUNT(*) from Flight_History
	inner join Flight on Flight_History.flight_id = Flight.id
	where Flight.[from] = 'Beograd' and Flight.[to] = 'Berlin';
-- Select pilots with above than average pay
select first_name, last_name, pay from Pilot where pay > (select AVG(pay) from Pilot);
-- Select flight filled at least 50%
select * from Flight_History
	inner join Airplane on Flight_History.airplane_id = Airplane.id
	where (seats_filled * 2) >= seats;