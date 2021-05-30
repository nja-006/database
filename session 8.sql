CREATE DATABASE Session8

USE Session8

CREATE TABLE AUTHOR(
	[Name] VARCHAR(255) NOT NULL PRIMARY KEY,
	[Address] VARCHAR(255) NOT NULL,
	[URL] VARCHAR(255) NOT NULL,
)

CREATE TABLE Publisher(
	[Name] VARCHAR(255) NOT NULL,
	[Address] VARCHAR(255) NOT NUll,
	[Phone] VARCHAR(255) NOT NULL,
	[URL] INTEGER NOT NUll,

	PRIMARY KEY ([Name])
)

CREATE TABLE Customer(
	[Email] VARCHAR(255) NOT NULL,
	[Name] VARCHAR(255) NOT NULL,
	[Phone] VARCHAR(255) NOT NULL,
	[Address] VARCHAR(255) NOT NULL,

	PRIMARY KEY ([Email])
)

CREATE TABLE ShoppingBasket(
	[ID] INTEGER NOT NULL PRIMARY KEY,
	[CustomerEmail] VARCHAR(255) FOREIGN KEY REFERENCES Customer([Email])
)

CREATE TABLE Book(
	[ISBN] VARCHAR(255) NOT NULL PRIMARY KEY,
	[PublisherName] VARCHAR(255) FOREIGN KEY REFERENCES Publisher([Name]),
	[AuthorName] VARCHAR(255)FOREIGN KEY REFERENCES Author([Name]),
	[AuthorAddress] VARCHAR(255),
	[Year] INTEGER NOT NULL,
	[Title] VARCHAR(255) NOT NULL,
	[Price] NUMERIC(19,0) NOT NULL
)

CREATE TABLE ShoppingBasket_Book(
	[ShoppingBasketID] INTEGER FOREIGN KEY REFERENCES ShoppingBasket([ID]),
	[BookISBN] VARCHAR(255) FOREIGN KEY REFERENCES Book([ISBN]),
	[Count] INTEGER NOT NULL
)

CREATE TABLE Warehouse(
	[CODE] INTEGER PRIMARY KEY,
	[Phone] VARCHAR(255) NOT NULL,
	[Address] VARCHAR(255) NOT NULL,
)

CREATE TABLE Warehouse_Book(
	[Warehouse_Code] INTEGER FOREIGN KEY REFERENCES Warehouse([Code]),
	[BookISBN] VARCHAR(255) FOREIGN KEY REFERENCES Book([ISBN]),
	[Count] INTEGER
)

SELECT *
FROM Customer cs 
JOIN ShoppingBasket sb 
ON cs.[Email] = sb.[CustomerEmail]
JOIN ShoppingBasket_Book sbb 
ON sbb.[ShoppingBasketID] = sb.[ID]

SELECT * 
FROM AUTHOR 
WHERE [URL] = 10
UNION 
SELECT * 
FROM AUTHOR
WHERE [Name] = 'Budi'


SELECT cs.[Address], sb.[ID],sbb.[BookISBN]
FROM Customer cs 
LEFT JOIN ShoppingBasket sb 
ON cs.[Email] = sb.[CustomerEmail]
RIGHT JOIN ShoppingBasket_Book sbb 
ON sbb.[ShoppingBasketID] = sb.[ID]

