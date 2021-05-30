CREATE TABLE MsTopping(
	ToppingId CHAR (5) Primary Key NOT NUll,
	ToppingName VARCHAR (20)NOT NULL,
	ToppingPrice Int NOT NULL,

	CONSTRAINT CheckId Check(ToppingId LIKE 'TO[0-9][0-9][0-9]'),
	CONSTRAINT CheckName CHECK (len(ToppingName)>=5)
)

SELECT *
FROM MsTopping

DROP TABLE MsTopping

CREATE TABLE MsCustomer(
	CustomerId CHAR(5) NOT NULL,
	CustomerName VARCHAR(255) NOT NULL,
	CustomerGender VARCHAR(255) NOT NULL,
	CustomerPhone VARCHAR(255) NOT NULL,

	CONSTRAINT CheckIdCust CHECK ( CustomerId like 'CU[0-9][0-9][0-9]'),
	CONSTRAINT CheckGender CHECK ( CustomerGender In('Male','Female')),
	CONSTRAINT CheckPhone CHECK ( Len(CustomerPhone)>10 OR Len(CustomerPhone)<14)
)

SELECT *
FROM MsCustomer

DROP TABLE MsCustomer

ALTER TABLE MsCustomer
ADD  CustomerEmail VARCHAR(255),
CONSTRAINT CheckEmail Check(CustomerEmail Like '%@%')

CREATE TABLE MsStaff(
	StaffId CHAR(5) PRIMARY KEY Not Null,
	StaffName VARCHAR(255) Not Null,
	StaffGender VARCHAR(255) NOt NUll,
	StaffPhone VARCHAR(255) NOT NULL,
	Salary INT,

	CONSTRAINT CheckStaffId CHECK ( StaffId Like 'ST[0-9][0-9][0-9]'),
	Constraint CheckStaffGender CHECK (StaffGender In ('Male','Female')),
	CONSTRAINT CheckPhoneNumber CHECK (LEN(StaffPhone) >10 OR LEN ( STAFFPHONE)<14)
)

SELECT *
FROM MsStaff

DROP TABLE MsStaff

INSERT INTO MsStaff 
VALUES ('ST001','helo halo hola','Female','06514521555',3500000),
('ST002','holo hilo hulo','Female','058461451321',3600000),
('ST003','holo hilo hulo','Male','058461451321',3600000)

SELECT StaffName,Salary
FROM MsStaff
WHere StaffName Like '% % %'

UPDATE MsStaff
SET Salary = Salary + 150000
WHERE StaffGender = 'MALE'

CREATE VIEW ViewFemaleStaffEx AS
SELECT StaffName,left(StaffGender,1) AS StaffGender,Salary
From MsStaff
Where StaffGender Like'Female'

