CREATE DATABASE Session9

USE Session9

CREATE VIEW review
	AS SELECT hg.[Description],por.[ID]
	FROM PlayOfRound por JOIN HockeyGame hg
	ON hg.[RoundID] = por.[RoundID]
	WHERE hg.[RoundID] IN ('001','002')

CREATE TABLE PlayOfRound(
	[ID] CHAR(3) ,
	[Team1ID] CHAR(3),
	[Team2ID] CHAR(3),
	[StartTime] TIME,
	[EndTime] TIME,
	[RoundID] CHAR(3) PRIMARY KEY
)

CREATE TABLE HockeyGame(
	[ID] CHAR(3),
	[RoundID] CHAR(3) FOREIGN KEY REFERENCES PlayOfRound([RoundID]),
	[StartTime] TIME,
	[Description] VARCHAR(255),
	[Team1ID] CHAR(3),
	[Team2ID] CHAR(3)
)

