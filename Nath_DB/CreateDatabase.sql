CREATE DATABASE Liem
USE Liem

--Master
CREATE TABLE MsStaff(
	StaffID Char(5) PRIMARY KEY,
	[Name] VARCHAR(255),
	Gender VARCHAR(255),
	DOB date,
	[Address] VARCHAR(255),
	Email VARCHAR(255),
	PhoneNumber VARCHAR(255),
	Salary int,

	CONSTRAINT c_Gender CHECK(Gender in ('Male','Female')),
	CONSTRAINT c_ID CHECK(StaffID LIKE 'ST[0-9][0-9][0-9]'),
	CONSTRAINT c_Email CHECK(Email like '%@%'),
	CONSTRAINT c_PhoneNumber CHECK(Phonenumber LIKE '+62[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
)

CREATE TABLE MsFactory(
	FactoryID CHAR(5) PRIMARY KEY,
	[Name] VARCHAR(255),
	[Address] VARCHAR(255),
	Supervisor VARCHAR(255),
	Rating int,
	StartDate DATE,

	CONSTRAINT c_FactoryID CHECK(FactoryID LIKE 'FC[0-9][0-9][0-9]'),
	CONSTRAINT c_Name CHECK(LEN([Name]) < 50 AND LEN([Name]) > 10),
	CONSTRAINT c_Address CHECK([Address] LIKE '%Street'),
	CONSTRAINT c_Rating CHECK(Rating <= 5 AND Rating >=0)
)

CREATE TABLE MsDistributors(
	DistributorID CHAR(5) PRIMARY KEY,
	[Name] VARCHAR(255),
	[Address] VARCHAR(255),
	CompanyName VARCHAR(255),
	[Location] VARCHAR(255),
	Email VARCHAR(255),
	PhoneNumber VARCHAR(255),

	CONSTRAINT c_DistributorID CHECK(DistributorID LIKE 'DI[0-9][0-9][0-9]'),
	CONSTRAINT c_EmailDistributor CHECK(Email Like '%@%'),
	Constraint c_CompanyName CHECK(CompanyName Like '%Company'),
	CONSTRAINT c_PhoneNumberDistributor CHECK(Phonenumber LIKE '+62[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
)

CREATE TABLE MsCategory(
	CategoryID CHAR(5) PRIMARY KEY,
	[Name] VARCHAR(255),

	CONSTRAINT c_CategoryID CHECK(CategoryID LIKE 'CT[0-9][0-9][0-9]')
)

CREATE TABLE MsItem(
	ItemID CHAR(5) PRIMARY KEY,
	CategoryID CHAR(5),
	[Name] VARCHAR(255),
	SuplyPrice int,
	DistributePrice int,
	Stock int,
	Material VARCHAR(255),
	[Description] VARCHAR(255) DEFAULT 'No Description',

	FOREIGN KEY(CategoryID) REFERENCES MsCategory(CategoryID),

	CONSTRAINT c_ItemID CHECK(ItemID LIKE 'IT[0-9][0-9][0-9]'),
	CONSTRAINT c_Stock CHECK(Stock > 0)
)

--TransactionHeader

CREATE TABLE TrHeaderSupply(
	SupplyID CHAR(5) PRIMARY KEY,
	FactoryID CHAR(5),
	StaffID CHAR(5),
	TransactionDate date,

	FOREIGN KEY(FactoryID) REFERENCES MsFactory(FactoryID),
	FOREIGN KEY(StaffID) REFERENCES MsStaff(StaffID),

	CONSTRAINT c_SupplyID CHECK(SupplyID LIKE 'SU[0-9][0-9][0-9]'),
	CONSTRAINT c_Date CHECK(TransactionDate > GETDATE())
)

CREATE TABLE TrHeaderDistribute(
	DistributeID CHAR(5) PRIMARY KEY,
	DistributorID CHAR(5),
	StaffID CHAR(5),
	TransactionDate date,
	DistributionCity VARCHAR(255),

	FOREIGN KEY(DistributorID) REFERENCES MsDistributors(DistributorID),
	FOREIGN KEY(StaffID) REFERENCES MsStaff(StaffID),

	CONSTRAINT c_DistributeID CHECK(DistributeID LIKE 'DT[0-9][0-9][0-9]'),
	CONSTRAINT c_TransactionDateDistribute CHECK(TransactionDate > GETDATE())
)

--TransactionDetail

CREATE TABLE TrDetailSupply(
	SupplyID CHAR(5),
	ItemID CHAR(5),
	Qty int,

	PRIMARY KEY (SupplyID,ItemID),
	FOREIGN KEY(SupplyID) REFERENCES TrHeaderSupply(SupplyID),
	FOREIGN KEY(ItemID) REFERENCES Msitem(ItemID),

	CONSTRAINT c_QtySupply CHECK(QTY > 0)
)

CREATE TABLE TrDetailDistribute(
	DistributeID CHAR(5),
	ItemID CHAR(5),
	Qty int,

	PRIMARY KEY (DistributeID,ItemID),
	FOREIGN KEY(DistributeID) REFERENCES TrHeaderDistribute(DistributeID),
	FOREIGN KEY(ItemID) REFERENCES Msitem(ItemID),

	CONSTRAINT c_QtyDistribute CHECK(QTY > 0)
)


DROP TABLE MsStaff
DROP TABLE MsFactory
DROP TABLE MsDistributors
DROP TABLE MsCategory
DROP TABLE MsItem
DROP TABLE TrHeaderSupply
DROP TABLE TrHeaderDistribute
DROP TABLE TrDetailDistribute
DROP TABLE TrDetailSupply