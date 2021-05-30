USE JT

-- datediff, day,replace,right, reverse,datename, weekday,cast

CREATE TABLE test(
	tanggal DATE,
	angka VARCHAR (25)
)

DROP TABLE test

insert into test
VALUES ('2001-12-05','12345')


SELECT DATEDIFF(DAY,tanggal,'2001-12-12') AS bedatanggal
FROM test

-- jadi datediff itu mksdnya date different dimana dia itu di pake buat nyari jarak tanggal 1 ketanggal 2, contohnya itu kan datediff trus ada DAY kan Day it bisa jadi year atau month atau yang lain
-- tergantung kebutuhan lu maunya nyari jarak tahun tanggal bulann jam atau apa, nah kalau yg AS beda tanggal itu karena kalau pake syntax yang warna pink nama table tu ilang jd no column name makanya gw pake as buat kasi nama tabel lagi

--skalian weekday, week day tu ad aturannya  0 = Monday, 1 = Tuesday, 2 = Wednesday, 3 = Thursday, 4 = Friday, 5 = Saturday, 6 = Sunday.  jadi kalau lu punya data 2015-12-1, dia bakal liat tanggal 1 bulan 12 2015 itu jato di hari apa, nanti dia bakal tampilin angka sesuai hari. ga bisa datediff ya

-- skalian yang day day itu tu buat ngambil tanggal dari data misalnya lu punya data 2015-12-30 lu mau ambil tanggalnya itu pake day

SELECT REPLACE (angka,'5','0') AS angka
FROM test

-- REPLACE FORMATNY ITU (data yang mau lu ganti, bagian apa yg mw lu ganti, mau di ganti sama apa)

SELECT RIGHT(angka,2) AS [2angkadarikanan]
FROM test

--RIGHT ITU buat ngambil data dari sebalah kanan angka 2 yg gw tulis itu di maksud bwt 2 angka dari kanan, kalau lu pake left brrti ambil data dari kiri

SELECT REVERSE(angka) AS kebalikan
FROM test

-- cuma muter data yang belakang jadi depan depan jadi blkg


SELECT DATENAME(day,tanggal) AS tanggal
FROM test
-- buat nampilin spesifik lu mw ambil tahun tanggal buan dari data kalau in tanggal makanya pake day

-- cast itu kalau misalkan kan data angka gw pake varchar tapi suatu saat mw gw tambahin datanya kan gabisa karena varchar jd hrus di cast ke int atau numeric atau yg lain

UPDATE test
set angka = CAST(angka AS INT)

