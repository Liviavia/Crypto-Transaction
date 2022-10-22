CREATE DATABASE [HaLLo Pharmacy]
USE [HaLLo Pharmacy]
GO
CREATE TABLE Employee(
	EmployeeID CHAR(5) PRIMARY KEY CHECK(EmployeeID LIKE 'EM[0-9][0-9][0-9]'),
	EmployeeName VARCHAR(255) NOT NULL,
	EmployeeEmail VARCHAR(255) NOT NULL CHECK(EmployeeEmail LIKE '%@hallo.com'),
	EmployeePhone VARCHAR(255) NOT NULL,
	EmployeeAddress VARCHAR(255) NOT NULL,
	EmployeeDOB DATE NOT NULL,
	EmployeeGender VARCHAR(255) NOT NULL CHECK (EmployeeGender IN ('Male','Female')),
	EmployeeSalary INT NOT NULL
)

GO
CREATE TABLE Vendor(
	VendorID CHAR(5) PRIMARY KEY CHECK(VendorID LIKE 'VN[0-9][0-9][0-9]'),
	VendorName VARCHAR(255) NOT NULL CHECK(LEN(VendorName) > 3),
	VendorPhone VARCHAR(255) NOT NULL,
	VendorAddress VARCHAR(255) NOT NULL,
	VendorEmail VARCHAR(255) NOT NULL CHECK(VendorEmail LIKE '%.com'),
	VendorEstabilishedYear INT NOT NULL
)

GO
CREATE TABLE Customer(
	CustomerID CHAR(5) PRIMARY KEY CHECK(CustomerID LIKE'CU[0-9][0-9][0-9]'),
	CustomerName VARCHAR(255) NOT NULL,
	CustomerPhone VARCHAR(255) NOT NULL,
	CustomerAddress VARCHAR(255) NOT NULL,
	CustomerGender VARCHAR (255) NOT NULL CHECK (CustomerGender IN ('Male','Female')),
	CustomerEmail VARCHAR(255) NOT NULL CHECK(CustomerEmail LIKE '%@hallo.com'),
	CustomerPassword VARCHAR(255) NOT NULL,
	CustomerDOB DATE NOT NULL
)

GO
CREATE TABLE MedicineCategory (
	MedicineCategoryID CHAR(5) PRIMARY KEY CHECK(MedicineCategoryID LIKE 'CT[0-9][0-9][0-9]'),
	CategoryName VARCHAR(255) NOT NULL CHECK (CategoryName NOT IN('Amidopyrine','Phenacetin','Methaqualone'))
)

GO
CREATE TABLE Medicine (
	MedicineID CHAR(5) PRIMARY KEY CHECK (MedicineID LIKE 'MD[0-9][0-9][0-9]'),
	MedicineCategoryID CHAR(5) FOREIGN KEY REFERENCES MedicineCategory(MedicineCategoryID) ON UPDATE CASCADE ON DELETE CASCADE,
	MedicineName VARCHAR(255) NOT NULL,
	MedicinePrice INT NOT NULL CHECK(MedicinePrice BETWEEN 5000 AND 100000), 
	MedicineDescription VARCHAR(255) NOT NULL,
	MedicineStock INT
)

GO
CREATE TABLE PurchaseTransactionHeader(
	PurchaseTransactionID CHAR(5) PRIMARY KEY CHECK(PurchaseTransactionID LIKE 'PC[0-9][0-9][0-9]'),
	EmployeeID CHAR(5) FOREIGN KEY REFERENCES Employee(EmployeeID) ON UPDATE CASCADE ON DELETE CASCADE,
	VendorID CHAR(5) FOREIGN KEY REFERENCES Vendor(VendorID) ON UPDATE CASCADE ON DELETE CASCADE,
	PurchaseTransactionDate DATE NOT NULL
)

GO
CREATE TABLE PurchaseTransactionDetail(
	PurchaseTransactionID CHAR(5) FOREIGN KEY REFERENCES PurchaseTransactionHeader(PurchaseTransactionID),
	MedicineID CHAR(5) FOREIGN KEY REFERENCES Medicine(MedicineID) ON UPDATE CASCADE ON DELETE CASCADE,
	Quantity INT NOT NULL
	PRIMARY KEY(PurchaseTransactionID,MedicineID)
)

GO
CREATE TABLE SalesTransactionHeader(
	SalesTransactionID CHAR(5) PRIMARY KEY CHECK(SalesTransactionID LIKE 'SL[0-9][0-9][0-9]'),
	CustomerID CHAR(5) FOREIGN KEY REFERENCES Customer(CustomerID) ON UPDATE CASCADE ON DELETE CASCADE,
	EmployeeID CHAR(5) FOREIGN KEY REFERENCES Employee(EmployeeID) ON UPDATE CASCADE ON DELETE CASCADE,
	SalesTransactionDate DATE NOT NULL
)


GO
CREATE TABLE SalesTransactionDetail(
	SalesTransactionID CHAR(5) FOREIGN KEY REFERENCES SalesTransactionHeader(SalesTransactionID) ,
	MedicineID CHAR(5) FOREIGN KEY REFERENCES Medicine(MedicineID) ON UPDATE CASCADE ON DELETE CASCADE,
	Quantity INT NOT NULL
	PRIMARY KEY(SalesTransactionID, MedicineID)
)