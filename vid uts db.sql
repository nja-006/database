CREATE TABLE Branch(
	BranchID CHAR(5) PRIMARY KEY,
	StaffName VARCHAR(255) NOT NULL,
	Phone VARCHAR(13) NOT NULL,

	CONSTRAINT CheckPh CHECK(Phone LIKE'08%'),
	CONSTRAINT CheckBr CHECK(BranchID LIKE'BR[0-9][0-9][0-9]'),
)


CREATE TABLE MsStaff(
	StaffID CHAR(5) PRIMARY KEY,
	StaffName VARCHAR(255) NOT NULL,
	StaffAddress VARCHAR(255) NOT NULL,
	DateOfBirth DATE NOT NULL,
	Position VARCHAR(255) NOT NULL,
	Phone VARCHAR (13) NOT NULL,
	BranchID CHAR(5) FOREIGN KEY REFERENCES Branch(BranchID),

	CONSTRAINT CheckSt CHECK(StaffID LIKE'ST[0-9][0-9][0-9]'),
	CONSTRAINT CheckAdd CHECK(StaffAddress LIKE'Jl.%'),
	CONSTRAINT CheckPos CHECK(Position IN('Manager','Senior Instructor','Instructors','Administrative Staff')),
	CONSTRAINT CheckPhone CHECK(Phone LIKE'08%')
)