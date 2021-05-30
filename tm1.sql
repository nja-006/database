-- 2301846300 Nathaniel Jason Alvianji
-- 2301910783 Daniel Alfrian
-- 2301848432 Febrian dwiputra
--2301912271 hanson sanusi

CREATE TABLE Author(
	[Name] VARCHAR(255) NOT NULL,
	[Address] VARCHAR(255) NOT NULL,
	[URL]VARCHAR(255) NOT NULL,

	PRIMARY KEY([Name],[Address])
)

SELECT * 
FROM Author

DROP TABLE Author

CREATE TABLE Publisher(
	[Name] VARCHAR(255) PRIMARY KEY NOT NULL,
	[Address] VARCHAR(255) NOT NULL,
	[Phone] VARCHAR(255) NOT NULL,
	[URL] INTEGER   NOT NULL
)

SELECT * 
FROM Publisher

DROP TABLE Publisher

CREATE TABLE Book(
	[ISBN] VARCHAR(255) PRIMARY KEY,
	[PublisherName]VARCHAR(255),
	[AuthorName] VARCHAR(255),
	[AuthorAddress]VARCHAR(255),
	[Year] INT  NOT NULL,
	[Title] VARCHAR(255) NOT NULL,
	[Price] Numeric(19,0) NOT NULL,
)

SELECT * 
FROM Book

DROP TABLE Book

CREATE TABLE Warehouse_Book(
	[WarehouseCode] Int FOREIGN KEY REFERENCES Warehouse([Code]),
	[BookISBN] VARCHAR(255) FOREIGN KEY REFERENCES Book([ISBN]),
	[Count] INT NOT NULL,
)

SELECT * 
FROM Warehouse_Book

DROP TABLE Warehouse_Book

CREATE TABLE Warehouse(
	[Code] Int PRIMARY KEY,
	[Phone] VARCHAR(255) NOT NULL,
	[Address] VARCHAR(255) NOT NULL
)

SELECT * 
FROM Warehouse

DROP TABLE Warehouse

CREATE TABLE ShoppingBasket_Book(
	[ShoppingBasketID] Int FOREIGN KEY REFERENCES ShoppingBasket([ID]),
	[BookISBN] VARCHAR(255) FOREIGN KEY REFERENCES Book([ISBN]),
	[Count] INT,
)

SELECT * 
FROM ShoppingBasket_Book

DROP TABLE ShoppingBasket_Book

CREATE TABLE ShoppingBasket(
	[ID] INT PRIMARY KEY,
	[CustomerEmail] VARCHAR(255)
)

SELECT * 
FROM ShoppingBasket

DROP TABLE ShoppingBasket

CREATE TABLE Customer(
	[Email] VARCHAR(255) PRIMARY KEY,
	[Name]  VARCHAR(255),
	[Phone]  VARCHAR(255),
	[Address]  VARCHAR(255)
)

SELECT * 
FROM Customer

DROP TABLE Customer
