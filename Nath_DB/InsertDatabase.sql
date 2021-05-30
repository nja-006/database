USE Liem

INSERT INTO MsStaff VALUES
('ST000', 'Theresa Hebert',		'Female', '2015-08-15', 'Jalan Berkah' , 'theresa.hebert@member.com', '+6221128170057' , 1000000),
('ST001', 'Veronica Campos',	'Female', '2016-03-1', 'Jalan Rahmat' , 'veronica.campos@member.com' , '+6221412521344' , 2000000),
('ST002', 'Diana Shelton',		'Female', '2017-04-5', 'Jalan Keselamatan', 'diana.shelton@member.com' , '+6221787172615' , 3000000),
('ST003', 'Jesse Burns',		'Female', '2018-02-18', 'Jalan Kesabaran', 'jesse.burns@member.com' , '+6221354979155' , 4000000),
('ST004', 'Hazel Oneill',		'Female', '2019-05-24', 'Jalan Bersyukur' , 'hazel.oneill@member.com' , '+6221627639198' , 5000000),

('ST005', 'Mason Norman',		'Male', '2016-11-15', 'Jalan Ujung' , 'mason.norman@member.com' , '+6221568622972' , 6000000),
('ST006', 'Ruben Hale',			'Male', '2017-12-15', 'Jalan Kemurahan' , 'ruben.hale@member.com' , '+6221459160138' , 7000000),
('ST007', 'Reuben Trevino',		'Male', '2018-10-13', 'Jalan Mangga' , 'reuben.trevino@member.com' , '+6221907428500' , 8000000),
('ST008', 'Pearl Klein',		'Male', '2019-09-25', 'Jalan Durian' , 'pearl.klein@member.com' , '+6221066758101' , 9000000),
('ST009', 'Haider Cortez',		'Male', '2019-07-20', 'Jalan Sirsak' , 'haider.cortez@member.com' , '+6221478507098' , 10000000)

INSERT INTO MsFactory VALUES
('FC001', 'Nathaniel Joenathan', 'Anggur Street', 'Jason', 1 , '2018-12-11'),
('FC002', 'Alvianji Delvechia', 'Melon Street', 'Daniel', 2 , '2019-12-11'),
('FC003', 'Marco Kurniawan', 'Belewah Street', 'Febrian', 3 , '2018-10-11'),
('FC004', 'Daniel Wilson', 'Apel Street', 'Wibowo', 4 , '2020-02-13'),
('FC005', 'Nathaniel Richardo', 'Lontar Street', 'William', 5 , '2019-10-16'),

('FC006', 'Mikha Pranantya', 'Jeruk Street', 'Leonardy', 1 , '2017-12-18'),
('FC007', 'Antonius louis', 'Nanas Street', 'Leonardo', 2 , '2016-12-20'),
('FC008', 'Michelle Hani', 'Manggis Street', 'Tim', 3 , '2015-8-25'),
('FC009', 'Birgitta Aurelia', 'Sirsak Street', 'Steven', 4 , '2017-12-30'),
('FC010', 'Nathasya Fabiola', 'Lemon Street', 'Anderson', 5 , '2013-12-28')

INSERT INTO MsDistributors VALUES
('DI001', 'Vincent', 'Jalan Semeru', 'Mawar Company', 'Indonesia', 'Vincent@gmail.com', '+6281293748509'),
('DI002', 'Jenny', 'Jalan Merapi', 'Kembang Sepatu Company', 'Vietnam', 'Jenny@gmail.com', '+6292850483917'),
('DI003', 'Alda', 'Jalan Bromo', 'Asoka Company', 'Jepang', 'Alda@gmail.com', '+6298675647658'),
('DI004', 'Aldy', 'Jalan Rinjani', 'Kamboja Company', 'Kamboja', 'Aldy@gmail.com', '+6298675764767'),
('DI005', 'Aldo', 'Jalan Kerinci', 'Melati Company', 'Thailand', 'Aldo@gmail.com', '+6297864765342'),

('DI006', 'Aletha', 'Jalan Sumbing', 'Bougenville Company', 'Myanmar', 'Aletha@gmail.com', '+6298789675456'),
('DI007', 'Alexa', 'Jalan Slamet', 'Alamanda Company', 'Timor Leste', 'Alexa@gmail.com', '+6290876875675'),
('DI008', 'Albert', 'Jalan Krakatau', 'Kemuning Company', 'Korea', 'Albert@gmail.com', '+6289078675645'),
('DI009', 'Aira', 'Jalan Merbabu', 'Lily Company', 'Brunei', 'Aira@gmail.com', '+6278675645345'),
('DI010', 'Agnes', 'Jalan Sindoro', 'Matahari Company', 'Filipina', 'Agnes@gmail.com', '+6290878675876')

INSERT INTO MsCategory VALUES
('CT001','Furniture'),
('CT002','Fashion'),
('CT003','Tablet'),
('CT004','Handphone'),
('CT005','Kamera'),
('CT006','Musik'),
('CT007','Gaming'),
('CT008','Kesehatan'),
('CT009','Komputer'),
('CT010','Laptop')

INSERT INTO MsItem VALUES
('IT001', 'CT001', 'Bangku', 10000, 20000, 10, 'Kayu', 'Bagus'),
('IT002', 'CT002', 'Kemeja', 30000, 40000, 20, 'Kain', 'Bagus'),
('IT003', 'CT003', 'Samsung', 50000, 60000, 30, 'Plastic','Bagus'),
('IT004', 'CT004', 'Xiaomi', 70000, 80000, 40, 'Plastic', 'Bagus sekali'),
('IT005', 'CT005', 'Canon', 90000, 10000, 50, 'Plastic', 'Lumayan'),

('IT006', 'CT006', 'Yamaha', 20000, 30000, 60, 'Kayu', 'Jelek'),
('IT007', 'CT007', 'Razer', 40000, 50000, 70, 'Besi', 'Sangat Bagus'),
('IT008', 'CT008', 'Termometer', 60000, 70000, 80, 'Raksa', 'Kurang bagus'),
('IT009', 'CT009', 'Keyboard', 80000, 90000, 90, 'PVC', 'Jelek Banget'),
('IT010', 'CT010', 'HP', 10000, 20000, 100, 'Baja', 'Mantul')