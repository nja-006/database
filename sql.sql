CREATE DATABASE Calvin

USE Calvin



CREATE TABLE PlayOfRound(
id CHAR(3) ,
team1id CHAR(3),
team2id CHAR(3),
startTime TIME,
endTime TIME,
roundID CHAR(3) PRIMARY KEY
)

CREATE TABLE HockeyGame(
id CHAR(3),
roundID CHAR(3) FOREIGN KEY REFERENCES PlayOfRound(RoundID),
startTime TIME,
[description] VARCHAR(255),
team1id CHAR(3),
team2id CHAR(3)
)

CREATE VIEW gabungan
AS SELECT hkg.id,plyr.StartTime
FROM PlayOfRound plyr JOIN HockeyGame hkg
ON hkg.RoundID = plyr.roundID
WHERE plyr.id IN ('001','002')


