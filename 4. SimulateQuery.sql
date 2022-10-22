Use [HaLLo Pharmacy]

-- Skenario 1 (SalesTransaction) : Dalam suatu transaksi ke - 21 pada 03 November 2021 , Customer bernama Hanson (CU011) 
-- melakukan transaksi dengan Employee bernama Richard Yoswan (EM014) dengan rincian obat :
-- 1. Diapet(MD001) sebanyak 4 buah
-- 2. Methadone(MD012) sebanyak 6 buah
-- 3. Quinin(MD015) sebanyak 5 buah

GO
INSERT INTO SalesTransactionHeader
VALUES ('SL021', 'CU011', 'EM014', '2021-11-03')

GO
INSERT INTO SalesTransactionDetail
VALUES
('SL021', 'MD001', 4), 
('SL021', 'MD012', 6), 
('SL021', 'MD015', 5)

GO
-- Skenario 2 (PurchaseTransaction) : Dalam suatu transaksi ke - 21 pada 05 Maret 2021 , Employee bernama Chelsey Krishye (EM007) 
-- melakukan transaksi dengan VendorDepok (VN015) dengan rincian obat :
-- 1. Zonal(MD005) sebanyak 5 buah
-- 2. Stromag(MD017) sebanyak 10 buah
-- 3. Valesco(MD019) sebanyak 2 buah

GO
INSERT INTO PurchaseTransactionHeader
VALUES ('PC021', 'EM007', 'VN015', '2021-03-05')

GO
INSERT INTO PurchaseTransactionDetail
VALUES
('PC021', 'MD005', 5), 
('PC021', 'MD017', 10), 
('PC021', 'MD019', 2)