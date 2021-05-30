CREATE TABLE Branch(
	BranchID Char (5) Primary Key,
	StaffName VARCHAR(255)NOT NUll,
	Phone VARCHAR(13),

	CONSTRAINT CheckPh CHECK( Phone LIKE'08%'),
	CONSTRAINT CheckBR CHECK(BranchID LIKE'BR[0-9][0-9][0-9]'),
)

CREATE TABLE MsStaff(
	StaffID CHAR(5) PRIMARY KEY,
	StaffName VARCHAR(255) NOT NULL,
	StaffAddress VARCHAR(255) NOT NULL,
	DateOfBirth Date NOT NULL,
	Position VARCHAR(255) NOT NULL,
	Phone VARCHAR(13) NOT NULL,
	BranchID CHAR(5) FOREIGN KEY REFERENCES Branch(BranchID),

	CONSTRAINT CheckId CHECK(StaffID LIKE'ST[0-9][0-9][0-9]'),
	CONSTRAINT CheckAdd CHECK(StaffAddress LIKE'Jl.%'),
	CONSTRAINT CheckPoss CHECK(Position in('Manager',
)

