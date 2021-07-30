
IF OBJECT_ID('dbo.Venue','u') IS NOT NULL
  DROP TABLE dbo.Venue
  GO

CREATE TABLE Venue (
	Id UNIQUEIDENTIFIER PRIMARY KEY default NEWID(),
	[Name] VARCHAR(200) NOT NULL,
	City VARCHAR(100) NOT NULL,
	[State] VARCHAR(100) NOT NULL,
	Capacity INT
)

GO


INSERT INTO Venue VALUES (default, 'American Airlines Arena','Miami','Florida','19600')
INSERT INTO Venue VALUES (default,'American Airlines Center','Dallas','Texas','19200')
INSERT INTO Venue VALUES (default,'Amway Center','Orlando','Florida','18846')
INSERT INTO Venue VALUES (default,'AT&T Center','San Antonio','Texas','18418')
INSERT INTO Venue VALUES (default,'Bankers Life Fieldhouse','Indianapolis','Indiana','17923')
INSERT INTO Venue VALUES (default,'Barclays Center','Brooklyn','New York','17732')
INSERT INTO Venue VALUES (default,'Capital One Arena','Washington','D.C.','20356')
INSERT INTO Venue VALUES (default,'Chase Center','San Francisco','California','18064')
INSERT INTO Venue VALUES (default,'Chesapeake Energy Arena','Oklahoma City','Oklahoma','18203')
INSERT INTO Venue VALUES (default,'FedExForum','Memphis','Tennessee','17794')
INSERT INTO Venue VALUES (default,'Fiserv Forum','Milwaukee','Wisconsin','17500')
INSERT INTO Venue VALUES (default,'Golden 1 Center','Sacramento','California','17583')
INSERT INTO Venue VALUES (default,'Little Caesars Arena','Detroit','Michigan','20332')
INSERT INTO Venue VALUES (default,'Madison Square Garden','New York City','New York','19812')
INSERT INTO Venue VALUES (default,'Moda Center','Portland','Oregon','19441')
INSERT INTO Venue VALUES (default,'Pepsi Center','Denver','Colorado','19520')
INSERT INTO Venue VALUES (default,'Rocket Mortgage FieldHouse','Cleveland','Ohio','19432')
INSERT INTO Venue VALUES (default,'Scotiabank Arena','Toronto','Ontario','19800')
INSERT INTO Venue VALUES (default,'Smoothie King Center','New Orleans','Louisiana','16867')
INSERT INTO Venue VALUES (default,'Spectrum Center','Charlotte','North Carolina','19077')
INSERT INTO Venue VALUES (default,'Staples Center','Los Angeles','California','18997')
INSERT INTO Venue VALUES (default,'State Farm Arena','Atlanta','Georgia','18118')
INSERT INTO Venue VALUES (default,'Talking Stick Resort Arena','Phoenix','Arizona','18055')
INSERT INTO Venue VALUES (default,'Target Center','Minneapolis','Minnesota','18978')
INSERT INTO Venue VALUES (default,'TD Garden','Boston','Massachusetts','18624')
INSERT INTO Venue VALUES (default,'Toyota Center','Houston','Texas','18055')
INSERT INTO Venue VALUES (default,'United Center','Chicago','Illinois','20917')
INSERT INTO Venue VALUES (default,'Vivint Smart Home Arena','Salt Lake City','Utah','18306')
INSERT INTO Venue VALUES (default,'Wells Fargo Center','Philadelphia','Pennsylvania','20478')
INSERT INTO Venue VALUES (default,'Inglewood Basketball and Entertainment Center','Inglewood', 'California','18000')



SELECT * FROM Venue

SELECT Id,[Name],City,[State],Capacity FROM Venue 
ORDER BY [Name] DESC 

SELECT Id,[Name],City,[State],Capacity FROM Venue
WHERE Name LIKE '%Staples Center%'

DELETE FROM Venue WHERE Id  = (
SELECT Id FROM Venue WHERE Name = 'Staples Center'
)

SELECT COUNT(*) AS [Venue Count]
FROM Venue

INSERT INTO Venue VALUES (default,'Staples Center','Los Angeles','California','18997')

SELECT COUNT(*) AS [Venue Count]
FROM Venue


SELECT Name, City FROM Venue
WHERE State LIKE '%California%'

SELECT Name, Capacity FROM Venue
WHERE Capacity >= 19200


SELECT Name, City, State FROM Venue
WHERE (State = 'California') OR (State = 'Texas') OR (State = 'Colorado') OR (State = 'Tennessee') OR (State = 'Minnesota')
           OR (State = 'Oklahoma') OR (State = 'Louisiana') OR (State = 'Arizona') OR (State = 'Utah') OR (State = 'Oregon')


SELECT SUM(Capacity) AS [Total Venue Capacity]
FROM Venue


SELECT SUM(Capacity) AS [Western Conference Venue Capacity] FROM Venue
WHERE  (State = 'California') OR (State = 'Texas') OR (State = 'Colorado') OR (State = 'Tennessee') OR (State = 'Minnesota')
           OR (State = 'Oklahoma') OR (State = 'Louisiana') OR (State = 'Arizona') OR (State = 'Utah') OR (State = 'Oregon')
	

UPDATE Venue SET State = 'AZ' WHERE State = 'Arizona'
UPDATE Venue SET State = 'CA' WHERE State = 'California'
UPDATE Venue SET State = 'CO' WHERE State = 'Colorado'
UPDATE Venue SET State = 'DC' WHERE State = 'D.C.'
UPDATE Venue SET State = 'FL' WHERE State = 'Florida'
UPDATE Venue SET State = 'GA' WHERE State = 'Georgia'
UPDATE Venue SET State = 'IL' WHERE State = 'Illinois'
UPDATE Venue SET State = 'IN' WHERE State = 'Indiana'
UPDATE Venue SET State = 'LA' WHERE State = 'Louisiana'
UPDATE Venue SET State = 'MA' WHERE State = 'Massachusetts'
UPDATE Venue SET State = 'MI' WHERE State = 'Michigan'
UPDATE Venue SET State = 'MN' WHERE State = 'Minnesota'
UPDATE Venue SET State = 'NY' WHERE State = 'New York'
UPDATE Venue SET State = 'NC' WHERE State = 'North Carolina'
UPDATE Venue SET State = 'OH' WHERE State = 'Ohio'
UPDATE Venue SET State = 'OK' WHERE State = 'Oklahoma'
UPDATE Venue SET State = 'ON' WHERE State = 'Ontario'
UPDATE Venue SET State = 'OR' WHERE State = 'Oregon'
UPDATE Venue SET State = 'PA' WHERE State = 'Pennsylvania'
UPDATE Venue SET State = 'TN' WHERE State = 'Tennessee'
UPDATE Venue SET State = 'TX' WHERE State = 'Texas'
UPDATE Venue SET State = 'UT' WHERE State = 'Utah'
UPDATE Venue SET State = 'WI' WHERE State = 'Wisconsin'



SELECT State, COUNT(State) AS [Venue in State]
FROM Venue
GROUP BY State





