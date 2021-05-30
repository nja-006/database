USE JT

CREATE TABLE Orang(
	nama VARCHAR(255),
	gender VARCHAR(255),
	tanggal date
)

DROP TABLE Orang
INSERT INTO Orang
VALUES ('asad','Female','2015-1-1'),
('sadsa','Male','2011-2-2')

'Instructor'
SELeCT Nama
FROM ORANG 
WHERE Gender = 'ma'
SELECT 
    COUNT(CASE gender WHEN 'm' THEN 1 ELSE  END) AS Male,
    COUNT(CASE gender WHEN 'f' THEN 0  END) AS Female
FROM Orang

SELECT COUNT(gender), COUNT(male) FROM Orang;


Select (Select count(*) 
	from Orang where gender='Male') AS Male,
		(Select count(*) 
			from Orang where gender='Female') AS Female 

SELECT DATEDIFF(YEAR, '2018-01-20', SYSDATE())

SELECT GETDATE()