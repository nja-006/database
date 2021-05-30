CREATE DATABASE UTS

USE UTS

CREATE TABLE Branch(
	BranchID Char (5) Primary Key,
	StaffName VARCHAR(255)NOT NUll,
	Phone VARCHAR(13),

	CONSTRAINT CheckPh CHECK( Phone LIKE'08%'),
	CONSTRAINT CheckBR CHECK(BranchID LIKE'BR[0-9][0-9][0-9]'),
)

SELECT *
FROM Branch

DROP TABLE Branch

CREATE TABLE MsStaff(
	StaffID CHAR(5) PRIMARY KEY,
	StaffName VARCHAR(255) NOT NULL,
	StaffAddress VARCHAR(255) NOT NULL,
	DateOfBirth DATE NOT NULL,
	Position VARCHAR(15) NOT NULL,
	Phone VARCHAR(13) NOT NULL,
	BranchId CHAR(5) FOREIGN KEY REFERENCES Branch(BranchID) NULL,

	CONSTRAINT CheckSt CHECK(StaffID LIKE'ST[0-9][0-9][0-9]'),
	CONStraint CheckSa CHECK(StaffAddress LIKE'Jl.%'),
	CONSTRAINT CheckP CHECK(Position LIKE'Manager' OR Position LIKE 'Senior Instructor' 
	OR Position LIKE 'Instructors' OR Position LIKE 'Administrative Staff'),
	CONSTRAINT CheckPhone CHECK(Phone LIKE'08%')
)

INSERT INTO MsStaff(StaffID,DateOfBirth)
VALUES ('00001','1950-12-12','sdaasd')

SELECT *
FROM MsStaff

SELECT StaffId, StaffName
FROM MsStaff
WHERE DATEDIFF(YEAR,DateOfBirth,GETDATE()) >55

DROP TABLE MsStaff

CREATE TABLE Car(
	CarID CHAR(5) PRIMARY KEY,
	StaffID CHAR(5) FOREIGN KEY REFERENCES MsStaff(StaffID)  ,
	BranchID CHAR(5) FOREIGN KEY REFERENCES Branch(BranchID) ON DELETE CASCADE ON UPDATE SET NULL,
	Fault INT
)

DROP TABLE Car

CREATE TABLE Client(
	ClientID CHAR(5) PRIMARY KEY,
	ClientName VARCHAR(255) NOT NULL,
	DateOfBirth DATE,
	Gender VARCHAR(255),
	LessonType VARCHAR(255),

	CONSTRAINT CheckCI CHECK(ClientID LIKE'CL[0-9][0-9][0-9]'),
	CONSTRAINT CheckGd CHECK(Gender LIKE'Female' OR Gender Like'Male'),
	CONSTRAINT CheckLT CHECK(LessonType Like'Individual' OR LessonType LIKE'Block')
)

SELECT (SELECT COUNT(*)
	FROM Client WHERE Gender='Male') AS Male,
		(Select COUNT(*)
			FROM Client WHERE Gender='Female') AS Female

	Select Gender,COUNT(Gender) AS JumlahClient
	FROM Client
	GROUP BY Gender

DROP TABLE Client
CREATE TABLE Interview(
	InterviewID CHAR(5) PRIMARY KEY,
	[Date] DATE,
	StaffID CHAR(5) FOREIGN KEY REFERENCES MsStaff(StaffID),
	ClientID CHAR(5) FOREIGN KEY REFERENCES Client(ClientID),
	Comment VARCHAR(255) NOT NULL,

	CONSTRAINT CheckII CHECK(InterviewID LIKE'II[0-9][0-9][0-9]')
)

SELECT *
FROM Interview it JOIN
Client cl ON it.ClientID = cl.ClientID

DROP TABLE Interview

CREATE TABLE Latihan(
	ClientID CHAR(5) FOREIGN KEY REFERENCES Client(ClientID),
	StaffID CHAR(5) FOREIGN KEY REFERENCES MsStaff(StaffID),
	CarID CHAR(5) FOREIGN KEY REFERENCES Car(CarID),
	StartAt TIME NOT NULL,
	EndAt TIME NOT NULL,
	NOTES VARCHAR(255) NOT NULL,

	CONSTRAINT CheckStart CHECK(StartAT BETWEEN '08:00:00' AND '20:00:00"'),
	
)

DROP TABLE Latihan

CREATE TABLE Hasil(
	ClientID CHAR(5) FOREIGN KEY REFERENCES Client(ClientID),
	StaffID CHAR(5) FOREIGN KEY REFERENCES MsStaff(StaffID),
	CarID CHAR(5) FOREIGN KEY REFERENCES Car(CarID),
	TanggalLulus DATE,
	Driving VARCHAR(255),
	Written VARCHAR(255),

	CONSTRAINT CheckDr CHECK(Driving IN('Lulus','Gagal')),
	CONSTRAINT CheckWr CHECK(Written IN('Lulus','Gagal'))
)


INSERT INTO Hasil (TanggalLulus)
VALUES ('2013-01-11')

SELECT ClientName
FROM Hasil hs 
JOIN Client cl ON hs.ClientID = cl.ClientID
WHERE MONTH(TanggalLulus) = '01' AND
YEAR(TanggalLulus) = '2013'

USE UTS