USE Febrian

CREATE VIEW [Join]
AS SELECT hog.ID,ply.StartTime
FROM PlayOfRound ply JOIN HockeyGame hog
ON hog.RoundID = ply.RoundID
WHERE hog.id IN ('001','002')

CREATE TABLE PlayOfRound(
	ID CHAR(3) ,
	Team1id CHAR(3),
	Team2id CHAR(3),
	StartTime TIME,
	EndTime TIME,
	RoundID CHAR(3) PRIMARY KEY
)

CREATE TABLE HockeyGame(
	ID CHAR(3),
	RoundID CHAR(3) FOREIGN KEY REFERENCES PlayOfRound(RoundID),
	StartTime TIME,
	[Description] VARCHAR(255),
	Team1id CHAR(3),
	Team2id CHAR(3)
)

