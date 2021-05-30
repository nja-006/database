USE master

CREATE TABLE PRICE (
	HARGA INT
)

INSERT INTO PRICE 
VALUES (25),
(30),
(40)

SELECT *
FROM PRICE

SELECT AVG(Harga) AS ratarata
FROM PRICE

SELECT MAX(Harga) AS BIGGEST
FROM PRICE

SELECT MIN(Harga) AS Lowest
FROM PRICE

SELECT SUM(Harga) AS Total
FROM PRICE

ALTER TABLE PRICE
ADD Nama VARCHAR(255)

INSERT INTO PRICE(Nama)
VALUES('Asui'),
('Aloi'),
('Alok'),
('Cong')


CREATE TABLE Sorting(
	ID CHAR(1),
	Nama VARCHAR(255),
	Negara VARCHAR(255)
)

INSERT INTO Sorting
VALUES('1','adi','Indonesia'),
('2','alo','Indonesia'),
('3','mike','Amerika')

SELECT *
FROM Sorting

SELECT COUNT(ID)AS ID,Negara
FROM Sorting
GROUP BY Negara

DROP TABLE SORTING
SELECT * 
FROM Sorting
ORDER BY ID desc

ALTER TABLE Sorting
ADD Umur INT

INSERT INTO Sorting (Umur)
VALUES(10),
(17),
(18)

CREATE TABLE [having](
	ID CHAR(1),
	Item INT,
	Price INT,
	Negara VARCHAR(255)
)

INSERT INTO [having]
VALUES ('1',5,100,'Indonesia'),
('2',10,200,'Amerika'),
('3',15,250,'Indonesia')

DROP TABLE [having]

SELECT *
FROM [having]
SELECT
	count(ITEM) AS item
FROM
	[having]
WHERE PRICE>10
GROUP BY  Negara 
HAVING SUM(Item) >9 