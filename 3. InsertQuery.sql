USE [HaLLo Pharmacy]

GO
INSERT INTO [Employee]
VALUES
('EM001', 'Andre Setiawan Wijaya', 'andre@hallo.com', '085274586585', 'Jl.Bekasi', '2003-01-16', 'Male', 6000000),
('EM002', 'Felix Novando', 'felix@hallo.com', '085272713232', 'Jl.Bandung', '2003-05-26', 'Male', 3000000),
('EM003', 'Erwin Wijaya', 'erwin@hallo.com', '085212345678', 'Jl.Bogor', '2003-01-10', 'Male', 2000000),
('EM004', 'Veronica Atlanta', 'vero@hallo.com', '081387650928', 'Jl.Batam', '2003-06-20', 'Female', 1500000),
('EM005', 'Adewirya Niko Sidharta', 'niko@hallo.com', '081387216271', 'Jl.Bengkalis', '2002-01-30', 'Male', 7400000),
('EM006', 'Maverick Sean Therry', 'sean@hallo.com', '081374586585', 'Jl.Batu', '2002-04-06', 'Male', 6550000),
('EM007', 'Chelsey Krishye', 'chelsey@hallo.com', '081274286187', 'Jl.BSD', '2002-07-11', 'Female', 5600000),
('EM008', 'Hansen Artajaya', 'hansen@hallo.com', '085283586585', 'Jl.Banjar', '2003-09-07', 'Male', 3250000),
('EM009', 'Jose Giancarlos', 'jose@hallo.com', '083214636585', 'Jl.Balikpapan', '2003-04-15', 'Male', 6500000),
('EM010', 'Julieta Romeo', 'julieta@hallo.com', '082204586185', 'Jl.Bandar Lampung', '2002-02-22','Female',5000000),
('EM011', 'Alberita Ribertus', 'alberita@hallo.com', '081277534012', 'Jl.Aceh', '2003-12-16', 'Female', 6000000),
('EM012', 'Andrew Nico', 'andrew@hallo.com', '083192894721', 'Jl.Ambon', '2003-10-21', 'Male', 3000000),
('EM013', 'Kimberly Egleunia', 'kimberly@hallo.com', '081282372957', 'Jl.Asmat', '2003-06-20', 'Female', 2000000),
('EM014', 'Richards Yoswan', 'richards@hallo.com', '085615295748', 'Jl.Alor', '2003-09-11', 'Male', 1500000),
('EM015', 'Leonardo de Caprio', 'leonardo@hallo.com', '081928426152', 'Jl.Asahan', '2003-08-31', 'Male', 7400000)


GO
INSERT INTO Vendor
VALUES
('VN001', 'VendorAceh', '089647901830', 'Jl. Aceh', 'VendorAceh.com', 2001), 
('VN002', 'VendorBali', '089647901831', 'Jl. Bali', 'VendorBali.com', 2002), 
('VN003', 'VendorBanten', '089647901832', 'Jl. Banten', 'VendorBanten.com', 2003), 
('VN004', 'VendorBengkulu', '089647901833', 'Jl. Bengkulu', 'VendorBelungku.com', 2004), 
('VN005', 'VendorGorontalo', '089647901834', 'Jl. Gorontalo', 'VentorGorontalo.com', 2005),
('VN006', 'VendorJakarta', '089647901835', 'Jl. Jakarta', 'VendorJakarta.com', 2006), 
('VN007', 'VendorJambi', '089647901836', 'Jl. Jambi', 'VendorJambi.com', 2007), 
('VN008', 'VendorMaluku', '089647901837', 'Jl. Maluku', 'VendorMaluku.com', 2008), 
('VN009', 'VendorRiau', '089647901838', 'Jl. Riau', 'VendorRiau.com', 2009), 
('VN010', 'VendorPapua', '089647901839', 'Jl. Papua', 'VendorPapua.com', 2010),
('VN011', 'VendorLangsa', '089647901840', 'Jl. Langsa', 'VendorLangsa.com', 2011), 
('VN012', 'VendorSabang', '089647901841', 'Jl. Sabang', 'VendorSabang.com', 2012), 
('VN013', 'VendorCilegon', '089647901842', 'Jl. Cilegon', 'VendorCilegon.com', 2013), 
('VN014', 'VendorCimahi', '089647901843', 'Jl. Cimahi', 'VendorCimahi.com', 2014), 
('VN015', 'VendorDepok', '089647901844', 'Jl. Depok', 'VendorDepok.com', 2015)

GO
INSERT INTO Customer
VALUES
('CU001', 'Ari', '082330602071', 'Jl.Merkurius', 'Male', 'ari@hallo.com', 'ari123', '2000-12-09'),
('CU002', 'Audrey', '083871576645', 'Jl.Neptunus', 'Female', 'audrey@hallo.com', 'audrey123', '2000-05-28'),
('CU003', 'Aviel', '081286616893', 'Jl.Pluto', 'Male', 'aviel@hallo.com', 'aviel123', '2000-08-18'),
('CU004', 'Angelia', '083870239357', 'Jl.Saturnus', 'Female', 'angelia@hallo.com', 'angelia123', '2000-06-06'),
('CU005', 'Benedictus', '081219550857', 'Jl.Venus', 'Male', 'benedictus@hallo.com', 'benedictus123', '2000-09-02'),
('CU006', 'Calvin', '081277534012', 'Jl.Bumi', 'Male', 'calvin@hallo.com', 'calvin123', '2000-07-13'),
('CU007', 'Christina', '083870815121', 'Jl.Mars', 'Female', 'chrsitina@hallo.com', 'christina123', '2000-01-22'),
('CU008', 'Muhammad', '082190630447', 'Jl.Jupiter', 'Male', 'muhammad@hallo.com', 'muhammad123', '2000-12-20'),
('CU009', 'Gerry', '085776422447', 'Jl.Uranus', 'Male', 'gerry@hallo.com', 'gerry123', '2000-12-01'),
('CU010', 'Devinca', '082190672986', 'Jl.Bintang', 'Female', 'devinca@hallo.com', 'devinca123', '2000-11-21'),
('CU011', 'Hanson', '085338534457', 'Jl.Galaksi', 'Male', 'hanson@hallo.com', 'hanson123', '2000-10-07'),
('CU012', 'Ivan', '081277534012', 'Jl.Matahari', 'Male', 'ivan@hallo.com', 'ivan123', '2000-09-03'),
('CU013', 'Junaedi', ' 081219550857', 'Jl.Asteroid', 'Male', 'junaedi@hallo.com', 'junaedi123', '2000-08-02'),
('CU014', 'Kevin', '08971506779', 'Jl.Komet', 'Male', 'kevin@hallo.com', 'kevin123', '2000-07-09'),
('CU015', 'Carl', '081277534012', 'Jl.Albek', 'Male', 'carl@hallo.com', 'carl123', '2000-06-19')

GO
INSERT INTO MedicineCategory
VALUES 
('CT001', 'Aminofilin'), 
('CT002', 'Bisacodyl'), 
('CT003', 'Cefuroxime'), 
('CT004', 'Dimethicone'), 
('CT005', 'Eperisone'), 
('CT006', 'Fluoxetine'), 
('CT007', 'Gliquidone'), 
('CT008', 'Hyoscine'), 
('CT009', 'Isradipine'), 
('CT010', 'Kanamycin'),
('CT011', 'Lidocaine'), 
('CT012', 'Methadone'), 
('CT013', 'Nizatidine'), 
('CT014', 'Piracetam'), 
('CT015', 'Quinidine'), 
('CT016', 'Ropinirole'), 
('CT017', 'Simethicone'), 
('CT018', 'Temazepan'), 
('CT019', 'Valsartan'), 
('CT020', 'Warfarin')

GO
INSERT INTO Medicine
VALUES
('MD001', 'CT001', 'Diapet', 10000, 'Obat Diare', 30),
('MD002', 'CT002', 'Stolax', 10000, 'Obat Pencahar', 38),
('MD003', 'CT003', 'Sharox', 45000, 'Obat Antibiotik', 32),
('MD004', 'CT004', 'Polysilane', 39000, 'Obat Antikembung', 32),
('MD005', 'CT005', 'Zonal', 15000, 'Obat Relaksan otot', 38),
('MD006', 'CT006', 'Prestin', 78000, 'Obat Antidepresan', 28),
('MD007', 'CT007', 'Lodem', 99000, 'Obat Antidiabetes', 18),
('MD008', 'CT008', 'Vellios', 8000, 'Obat Antispasmodik', 10),
('MD009', 'CT009', 'Israel', 23000, 'Obat Antihipertensi', 45),
('MD010', 'CT010', 'Kanamycin Sulfate', 56000, 'Obat Antibiotik', 25),
('MD011', 'CT011', 'Xylocaine', 44000, 'Obat Anestesi', 65),
('MD012', 'CT012', 'Methadone', 86000, 'Obat Resep', 55),
('MD013', 'CT013', 'Antaian', 68000, 'Obat Antagonis H2', 40),
('MD014', 'CT014', 'Zetropil', 67000, 'Obat Resep', 60),
('MD015', 'CT015', 'Quinin', 79000, 'Obat Antiaritmia', 64),
('MD016', 'CT016', 'ReQuip', 58000, 'Obat Agonis', 26),
('MD017', 'CT017', 'Stromag', 91000, 'Obat Antiflatulensi', 53),
('MD018', 'CT018', 'Benzodiazepine', 59000, 'Obat Penenang', 55),
('MD019', 'CT019', 'Valesco', 38000, 'Obat Hipertensi', 54),
('MD020', 'CT020', 'Simarc', 47000, 'Obat Antikoagulan', 43)


GO
INSERT INTO PurchaseTransactionHeader
VALUES
('PC001', 'EM001', 'VN015', '2021-01-16'), 
('PC002', 'EM003', 'VN012', '2021-03-15'), 
('PC003', 'EM003', 'VN014', '2021-05-12'), 
('PC004', 'EM007', 'VN012', '2018-07-26'), 
('PC005', 'EM009', 'VN010', '2019-09-25'), 
('PC006', 'EM011', 'VN008', '2019-11-26'), 
('PC007', 'EM013', 'VN006', '2020-02-10'), 
('PC008', 'EM015', 'VN004', '2020-04-01'), 
('PC009', 'EM001', 'VN002', '2020-06-03'), 
('PC010', 'EM006', 'VN010', '2021-01-16'),
('PC011', 'EM010', 'VN009', '2018-10-04'), 
('PC012', 'EM012', 'VN001', '2019-09-06'), 
('PC013', 'EM004', 'VN015', '2020-11-02'), 
('PC014', 'EM006', 'VN013', '2020-12-15'), 
('PC015', 'EM008', 'VN011', '2020-07-13'), 
('PC016', 'EM010', 'VN009', '2020-05-11'), 
('PC017', 'EM012', 'VN007', '2018-12-09'), 
('PC018', 'EM014', 'VN005', '2019-10-07'), 
('PC019', 'EM013', 'VN003', '2020-08-05'), 
('PC020', 'EM010', 'VN001', '2020-06-03')

GO
INSERT INTO PurchaseTransactionDetail
VALUES 
('PC001', 'MD001', 10), 
('PC001', 'MD011', 8), 
('PC001', 'MD012', 12), 
('PC002', 'MD002', 16), 
('PC002', 'MD005', 27), 
('PC003', 'MD003', 15), 
('PC003', 'MD013', 6), 
('PC003', 'MD020', 7), 
('PC004', 'MD004', 13), 
('PC005', 'MD005', 7), 
('PC006', 'MD006', 8), 
('PC007', 'MD007', 4), 
('PC007', 'MD017', 5), 
('PC008', 'MD008', 21), 
('PC008', 'MD018', 11), 
('PC009', 'MD009', 30), 
('PC010', 'MD010', 45),
('PC011', 'MD011', 20), 
('PC012', 'MD012', 19), 
('PC013', 'MD013', 14), 
('PC014', 'MD014', 13), 
('PC015', 'MD015', 18), 
('PC016', 'MD016', 16), 
('PC017', 'MD017', 6), 
('PC018', 'MD018', 13), 
('PC019', 'MD019', 16), 
('PC019', 'MD020', 35), 
('PC020', 'MD010', 44),
('PC020', 'MD018', 50),
('PC020', 'MD020', 12)


GO
INSERT INTO SalesTransactionHeader
VALUES
('SL001', 'CU001', 'EM001', '2001-01-01'), 
('SL002', 'CU002', 'EM001', '2002-02-22'), 
('SL003', 'CU003', 'EM003', '2003-03-02'), 
('SL004', 'CU004', 'EM004', '2004-04-02'), 
('SL005', 'CU005', 'EM005', '2005-05-05'), 
('SL006', 'CU006', 'EM006', '2006-06-06'), 
('SL007', 'CU007', 'EM006', '2007-07-29'), 
('SL008', 'CU008', 'EM008', '2008-08-02'), 
('SL009', 'CU009', 'EM009', '2009-09-09'), 
('SL010', 'CU010', 'EM010', '2010-10-10'),
('SL011', 'CU011', 'EM011', '2011-11-11'), 
('SL012', 'CU012', 'EM012', '2012-12-12'), 
('SL013', 'CU013', 'EM013', '2013-01-03'), 
('SL014', 'CU014', 'EM014', '2014-01-04'), 
('SL015', 'CU015', 'EM015', '2015-01-05'), 
('SL016', 'CU003', 'EM002', '2016-01-26'), 
('SL017', 'CU007', 'EM005', '2017-01-25'), 
('SL018', 'CU008', 'EM005', '2018-01-08'), 
('SL019', 'CU009', 'EM011', '2019-01-09'), 
('SL020', 'CU015', 'EM013', '2021-02-01')

GO
INSERT INTO SalesTransactionDetail
VALUES
('SL001', 'MD001', 23), 
('SL001', 'MD011', 36), 
('SL002', 'MD002', 17), 
('SL002', 'MD005', 10), 
('SL003', 'MD003', 10), 
('SL004', 'MD004', 22), 
('SL005', 'MD005', 5), 
('SL006', 'MD006', 35), 
('SL007', 'MD007', 28), 
('SL007', 'MD009', 18), 
('SL007', 'MD011', 11), 
('SL007', 'MD017', 42), 
('SL008', 'MD008', 18), 
('SL009', 'MD009', 45), 
('SL010', 'MD010', 20),
('SL010', 'MD013', 51),
('SL011', 'MD011', 20), 
('SL012', 'MD012', 17), 
('SL012', 'MD016', 17), 
('SL012', 'MD018', 13), 
('SL013', 'MD013', 23), 
('SL014', 'MD014', 20), 
('SL015', 'MD015', 60), 
('SL015', 'MD016', 79), 
('SL016', 'MD016', 15), 
('SL017', 'MD017', 56), 
('SL018', 'MD018', 10), 
('SL019', 'MD019', 70), 
('SL020', 'MD001', 50),
('SL020', 'MD020', 23)


