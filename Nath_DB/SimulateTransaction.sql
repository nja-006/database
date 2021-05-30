USE Liem

--DML di bawah ini merupakan Pencatatan data header atas sebuah transaksi yang terjadi transaksi pada supply
--Data yang dibutuhkan pada table ini adalah SupplyID, FactoryID, StaffID, dan juga TransactionDate
--Syntax INSERT INTO berguna untuk memasukan data ke dalam table

INSERT INTO TrHeaderSupply VALUES
('SU001', 'FC001', 'ST000', '2020-01-22'),
('SU002', 'FC002', 'ST001', '2019-02-18'),
('SU003', 'FC003', 'ST002', '2019-03-29'),
('SU004', 'FC004', 'ST003', '2018-04-13'),
('SU005', 'FC005', 'ST004', '2017-05-24'),

('SU006', 'FC006', 'ST005', '2018-06-30'),
('SU007', 'FC007', 'ST006', '2017-07-02'),
('SU008', 'FC008', 'ST007', '2016-08-08'),
('SU009', 'FC009', 'ST008', '2015-09-19'),
('SU010', 'FC010', 'ST009', '2013-10-20'),

('SU011', 'FC001', 'ST000', '2014-11-21'),
('SU012', 'FC002', 'ST001', '2014-12-16'),
('SU013', 'FC003', 'ST002', '2019-01-15'),
('SU014', 'FC004', 'ST003', '2020-02-14'),
('SU015', 'FC005', 'ST004', '2020-03-13')

--DML di bawah ini merupakan Pencatatan data header atas sebuah transaksi yang terjadi transaksi pada Distribute
--Data yang dibutuhkan pada table ini adalah DistributeID, DistributorID, StaffID, TransactionDate, dan juga DistributionCity
--Syntax INSERT INTO berguna untuk memasukan data ke dalam table

INSERT INTO TrHeaderDistribute VALUES
('DT001', 'DI001', 'ST000', '2020-01-10', 'Indonesia'),
('DT002', 'DI002', 'ST001', '2019-02-19', 'Thailand'),
('DT003', 'DI003', 'ST002', '2019-03-23', 'Kamboja'),
('DT004', 'DI004', 'ST003', '2018-04-19', 'Myanmar'),
('DT005', 'DI005', 'ST004', '2017-05-30', 'Japan'),

('DT006', 'DI006', 'ST005', '2018-06-20', 'Korea Selatan'),
('DT007', 'DI007', 'ST006', '2017-07-04', 'Korea Utara'),
('DT008', 'DI008', 'ST007', '2016-08-08', 'Arab Saudi'),
('DT009', 'DI009', 'ST008', '2015-09-03', 'Bangladesh'),
('DT010', 'DI010', 'ST009', '2013-10-01', 'Filipina'),

('DT011', 'DI001', 'ST000', '2014-11-22', 'India'),
('DT012', 'DI002', 'ST001', '2014-12-28', 'Malaysia'),
('DT013', 'DI003', 'ST002', '2019-01-30', 'Singapore'),
('DT014', 'DI004', 'ST003', '2020-02-19', 'Nepal'),
('DT015', 'DI005', 'ST004', '2020-03-18', 'Pakistan')

--DML di bawah ini merupakan Pencatatan data detail header dari table header suply
--Data yang dibutuhkan pada table ini adalah SupplyID, ItemID dan Qty
--Syntax INSERT INTO berguna untuk memasukan data ke dalam table

INSERT INTO TrDetailSupply VALUES
('SU010', 'IT010', 1),
('SU010', 'IT001', 2),
('SU001', 'IT002', 1),
('SU001', 'IT003', 1),
('SU002', 'IT004', 1),

('SU002', 'IT005', 1),
('SU002', 'IT006', 1),
('SU003', 'IT007', 2),
('SU004', 'IT008', 1),
('SU004', 'IT009', 2),

('SU005', 'IT010', 1),
('SU005', 'IT002', 2),
('SU006', 'IT004', 2),
('SU007', 'IT006', 1),
('SU008', 'IT008', 2),

('SU009', 'IT001', 2),
('SU009', 'IT003', 2),
('SU010', 'IT005', 1),
('SU011', 'IT007', 1),
('SU011', 'IT009', 1),

('SU011', 'IT010', 2),
('SU012', 'IT008', 2),
('SU013', 'IT001', 1),
('SU014', 'IT009', 1),
('SU014', 'IT005', 1)

--DML di bawah ini merupakan Pencatatan data detail header dari table header Distribute
--Data yang dibutuhkan pada table ini adalah DistributeID, ItemID dan Qty
--Syntax INSERT INTO berguna untuk memasukan data ke dalam table

INSERT INTO TrDetailDistribute VALUES
('DT001', 'IT002', 1),
('DT001', 'IT001', 1),
('DT002', 'IT005', 3),
('DT002', 'IT004', 2),
('DT002', 'IT001', 1),

('DT003', 'IT008', 1),
('DT003', 'IT006', 1),
('DT003', 'IT009', 2),
('DT003', 'IT003', 1),
('DT004', 'IT007', 3),

('DT004', 'IT006', 2),
('DT004', 'IT005', 2),
('DT005', 'IT004', 4),
('DT005', 'IT003', 4),
('DT005', 'IT002', 2),

('DT005', 'IT007', 2),
('DT005', 'IT001', 1),
('DT006', 'IT009', 1),
('DT007', 'IT001', 2),
('DT007', 'IT006', 1),

('DT008', 'IT004', 3),
('DT008', 'IT010', 1),
('DT010', 'IT010', 3),
('DT010', 'IT001', 2),
('DT010', 'IT002', 1)