CREATE DATABASE Febrian

USE Febrian

CREATE TABLE AUTHOR(
	[Name] VARCHAR(255) NOT NULL ,
	[Address] VARCHAR(255) NOT NULL PRIMARY KEY,
	[URL] VARCHAR(255) NOT NULL,
)

CREATE TABLE Publisher(
	[Name] VARCHAR(255) NOT NULL PRIMARY KEY,
	[Address] VARCHAR(255) NOT NUll,
	Phone VARCHAR(255) NOT NULL,
	[URL] INTEGER NOT NUll,
)

CREATE TABLE Customer(
	Email VARCHAR(255) NOT NULL PRIMARY KEY,
	[Name] VARCHAR(255) NOT NULL,
	Phone VARCHAR(255) NOT NULL,
	[Address] VARCHAR(255) NOT NULL
)

CREATE TABLE ShoppingBasket(
	ID INTEGER NOT NULL PRIMARY KEY,
	CustomerEmail VARCHAR(255) FOREIGN KEY REFERENCES Customer(Email)
)

CREATE TABLE Book(
	ISBN VARCHAR(255) NOT NULL PRIMARY KEY,
	PublisherName VARCHAR(255) FOREIGN KEY REFERENCES Publisher([Name]),
	AuthorName VARCHAR(255)FOREIGN KEY REFERENCES Author([Address]),
	AuthorAddress VARCHAR(255),
	[Year] INTEGER NOT NULL,
	Title VARCHAR(255) NOT NULL,
	Price NUMERIC(19,0) NOT NULL
)

CREATE TABLE ShoppingBasket_Book(
	ShoppingBasketID INTEGER FOREIGN KEY REFERENCES ShoppingBasket(ID),
	BookISBN VARCHAR(255) FOREIGN KEY REFERENCES Book(ISBN),
	[Count] INTEGER NOT NULL
)

CREATE TABLE Warehouse(
	CODE INTEGER PRIMARY KEY,
	Phone VARCHAR(255) NOT NULL,
	Address VARCHAR(255) NOT NULL,
)

CREATE TABLE Warehouse_Book(
	Warehouse_Code INTEGER FOREIGN KEY REFERENCES Warehouse(Code),
	BookISBN VARCHAR(255) FOREIGN KEY REFERENCES Book(ISBN),
	[Count] INTEGER
)

SELECT ath.[Name],bk.ISBN,pbls.[URL]
FROM Author ath 
JOIN Book bk ON ath.[Address] = bk.AuthorAddress 
JOIN Publisher pbls ON pbls.[Name] = bk.[PublisherName]

SELECT * 
FROM Book
WHERE ISBN = '001'
UNION 
SELECT * 
FROM Book
WHERE Title = '% % %'

SELECT ath.[URL],bk.ISBN
FROM Author ath 
LEFT JOIN Book bk ON ath.[Address] = bk.AuthorAddress 

