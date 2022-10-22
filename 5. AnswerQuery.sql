Use [HaLLo Pharmacy]
--1
select cs.CustomerID [Customer ID] ,
	   CustomerName [Customer Name],
	   convert(varchar,SalesTransactionDate,107) as [Transaction Date],
	   sum(Quantity) [Medicine Bought]
from Customer cs,SalesTransactionHeader sth,SalesTransactionDetail std
where cs.CustomerID = sth.CustomerID
and sth.SalesTransactionID = std.SalesTransactionID
and DAY(SalesTransactionDate) between 20 and 30
and CustomerGender = 'Female'
group by cs.CustomerID,CustomerName,SalesTransactionDate,CustomerGender

--2
select RIGHT(em.EmployeeID,3)[Employee Number],
	   EmployeeName [Employee Name],
	   concat(count(sth.CustomerID),' customer(s)') [Customer Served ]
from Employee em,SalesTransactionHeader sth
where em.EmployeeID = sth.EmployeeID
and EmployeeName like '%b%'
and EmployeeGender = 'Female' 
group by em.EmployeeID, EmployeeName

--3
select cs.CustomerID [Customer ID],CustomerName [Customer Name],
	   convert(varchar,CustomerDOB,106) [Date of Birth],
	   count(sth.CustomerID) [Transaction Count],
	   sum(Quantity * MedicinePrice) [Total Purchase]
from Customer cs,SalesTransactionDetail std,SalesTransactionHeader sth,Medicine md
where cs.CustomerID = sth.CustomerID
and sth.SalesTransactionID = std.SalesTransactionID
and std.MedicineID = md.MedicineID
and month(SalesTransactionDate) between 1 and 6
and sth.EmployeeID in ('EM004', 'EM006','EM008')
group by cs.CustomerID,CustomerName,CustomerDOB

--4
select  em.EmployeeID [Employee ID],
        EmployeeName [Employee Name],
		replace(EmployeePhone,'08','62') [Local Phone Number],
		count(pth.EmployeeID) [Transaction Done],
		concat(sum(Quantity),' item(s)') [Total Medicine Bought]
from Employee em,PurchaseTransactionHeader pth,PurchaseTransactionDetail ptd,Vendor ve
where em.EmployeeID = pth.EmployeeID
and pth.PurchaseTransactionID = ptd.PurchaseTransactionID
and pth.VendorID = ve.VendorID
and day(PurchaseTransactionDate) between 10 and 20 
and VendorEstabilishedYear > 2000
group by em.EmployeeID,EmployeeName,EmployeePhone

--5
select right(md.MedicineID,3) [Medicine ID],
	   upper(MedicineName) [Medicine Name],
	   CategoryName [Category Name],
	   CONCAT('Rp. ',MedicinePrice) [Price],
	   MedicineStock [Medicine Stock]
from Medicine md,MedicineCategory mc,(select avg(Quantity) rage from SalesTransactionDetail) average
where md.MedicineCategoryID = mc.MedicineCategoryID
and MedicinePrice > 50000
and MedicineStock < average.rage

--6
select REPLACE(em.EmployeeID,'EM','EMPLOYEE') [Employee Code],
	   em.EmployeeName [Employee Name],
	   convert(varchar,SalesTransactionDate,101) [Transaction Date],
	   md.MedicineName [Medicine Name],
	   md.MedicinePrice [Medicine Price],
	   Quantity
from Employee em,SalesTransactionHeader sth,SalesTransactionDetail std,Medicine md,(select avg(EmployeeSalary) rata2 from Employee)rat
where em.EmployeeID = sth.EmployeeID
and sth.SalesTransactionID = std.SalesTransactionID
and std.MedicineID = md.MedicineID
and day(SalesTransactionDate) = 2
and em.EmployeeSalary < rat.rata2

--7
select cs.CustomerID[Customer ID],
	   cs.CustomerName[Customer Name],
	   replace(cs.CustomerPhone,'08','62')[Local Customer Phone],
	   convert(varchar,CustomerDOB,107)[Date of Birth],
	   concat(sum(Quantity),' item(s)')[Medicine Bought]
from Customer cs,SalesTransactionDetail std,SalesTransactionHeader sth,(select avg(Quantity) av from SalesTransactionDetail)ave
where cs.CustomerID = sth.CustomerID
and sth.SalesTransactionID = std.SalesTransactionID
and CustomerGender not like 'Male'
group by cs.CustomerID,cs.CustomerName,cs.CustomerPhone,CustomerDOB,ave.av
having sum(Quantity) > ave.av

--8 
select em.EmployeeID [Employee ID], 
	   substring(EmployeeName,1, charindex(' ',EmployeeName)) [Employee Name],
	   concat('Rp. ',EmployeeSalary)[Salary],
	   convert(varchar,EmployeeDOB,107) [Date of Birth],
	   count(SalesTransactionID)[Transaction Served]
from Employee em, SalesTransactionHeader sth,
   (select avg(x.[Transaction Served]) as [EmpAverage]
	from
		(
			select em.EmployeeID [Employee ID], 
				   substring(EmployeeName,1, charindex(' ',EmployeeName)) [Employee Name],
	               concat('Rp. ',EmployeeSalary)[Salary],
	               convert(varchar,EmployeeDOB,107) [Date of Birth],
	               count(SalesTransactionID)[Transaction Served]
            from Employee em, SalesTransactionHeader sth where em.EmployeeID = sth.EmployeeID
			group by em.EmployeeID, EmployeeName, EmployeeDOB, EmployeeSalary
		)x
    )y
where em.EmployeeID = sth.EmployeeID and EmployeeName like '%[a-z] [a-z]%' -- nama orang yang memiliki spasi wajib memiliki setidaknya 1 karakter
GROUP BY em.EmployeeID , EmployeeName , EmployeeSalary, EmployeeDOB , y.EmpAverage
having count(*) > y.EmpAverage


--9 
create view VendorMaximumAverageQuantityViewer as
select ve.VendorID [Vendor ID], VendorName[Vendor Name], concat(avg(Quantity),' item(s)')[Average Supplied Quantity],concat(max(Quantity),' item(s)')[Maximum Supplied Quantity]
from Vendor ve,PurchaseTransactionHeader pth,PurchaseTransactionDetail ptd
where ve.VendorID = pth.VendorID
and pth.PurchaseTransactionID = ptd.PurchaseTransactionID
and VendorName like '%a%'
group by ve.VendorID,VendorName
having max(Quantity) > 5

select * from VendorMaximumAverageQuantityViewer

--10
create view VendorSupplyViewer as
select RIGHT(ve.VendorID,3)[Vendor Number],
	VendorName [Vendor Name],
	VendorAddress [Vendor Address],
	concat('Rp. ',sum(MedicinePrice * Quantity))[Total Supplied Value],
	concat(count(md.MedicineID),' medicine(s)') [Medicine Type Supplied]
from Vendor ve,PurchaseTransactionHeader pth,PurchaseTransactionDetail ptd,Medicine md
where ve.VendorID = pth.VendorID
and pth.PurchaseTransactionID = ptd.PurchaseTransactionID
and ptd.MedicineID = md.MedicineID
group by ve.VendorID,VendorName,VendorAddress
having sum(MedicinePrice * Quantity) > 150000 and count(md.MedicineID) > 2

select * from VendorSupplyViewer 



