/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [PassId]
      ,[YardsGained]
      ,[Quarter]
      ,[WasTouchdown]
      ,[WasInterception]
      ,[WasComplete]
      ,[PlayerId]
	  ,[ScheduleId]
  FROM [NFL].[dbo].[Passes]

ALTER TABLE Passes DROP COLUMN [YEAR]
ALTER TABLE Passes DROP COLUMN [Week]

ALTER TABLE Passes ADD ScheduleId INT

UPDATE Passes 
SET ScheduleId = 1
WHERE PassId >= 1 AND PassId <=5

UPDATE Passes 
SET ScheduleId = 2
WHERE PassId >= 6 AND PassId <=10

UPDATE Passes 
SET ScheduleId = 3
WHERE PassId >= 10 AND PassId <=15


UPDATE Passes 
SET ScheduleId = 4
WHERE PassId >= 16

--1-5 Game 5
--6-10 Game 6
--10-15 Game 7
--16+ game 8

--INSERT INTO Passes VALUES (15, 1, 0, 0, 1, 2013, 7, 1);

--CREATE TABLE Schedules (
--	[ScheduleId] INT IDENTITY
--	,[Year] INT
--	,[Week] INT
--	,PRIMARY KEY(ScheduleId)
--);

--SELECT * FROM Schedules;


--DECLARE @count INT
--SET @count = 1
--WHILE (@count <=1000000)
--BEGIN
--  INSERT INTO Passes VALUES (15, 1, 0, 0, 1, 2013, 7, 1);
--SET @count = @count + 1
--END

INSERT INTO Schedules VALUES (2013, 5);
INSERT INTO Schedules VALUES (2013, 6);
INSERT INTO Schedules VALUES (2013, 7);
INSERT INTO Schedules VALUES (2013, 8);
