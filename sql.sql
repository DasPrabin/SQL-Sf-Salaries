Create DataBase SF_Salaries;
use SF_Salaries;

-- 1 shows all columns and rows in the table
Select * from salaries;

-- 2 shows only EmployeeName and jobtitle coloumns.

select EmployeeName,jobtitle from salaries;

-- 3 Showe the Number of Employees in the table;

Select count(EmployeeName) from salaries;

-- 4 show the unique job titles in the table;

select distinct jobTitle from salaries;

--  5 show the job title and overtime pay for all employee with overtime pay greater then 50000;

select Jobtitle,OvertimePay from salaries where OvertimePay > 50000;

-- 6 show average BasePay for all employees. with twon decimal places;

select round(avg(BasePay),2) as avg_Basepay from salaries;

-- 7 show top 10 highest paid employees.

Select EmployeeName,TotalPay from salaries order By TotalPay desc limit 10 ;

-- 8 show the average of BasePay,overtimePay and otherPay for each employee;

Select EmployeeName,((BasePay+OvertimePay+OtherPay)/3)as Avg_salary from salaries;

-- 9 show all Emploees who have the word "Manger" in their job title;

select EMployeeName,Jobtitle from salaries where jobtitle LIke '%Manager%';

-- 10 SHow all employees with a job title not equal to 'Manager';

select EMployeeName,Jobtitle from salaries where jobtitle NOT LIke '%Manager%';

select EMployeeName,Jobtitle from salaries where jobtitle != 'Manager';

-- 11 Show all employee with a TotalPay between the 50,000 and  75,000;

Select EmployeeName,TotalPay from salaries where TotalPay > 50000 and TotalPay <75000;

SELECT EmployeeName,Totalpay
 FROM Salaries 
 WHERE Totalpay 
 BETWEEN 50000 
 and 75000;

-- 12  Show all Employee with a basepay less than 50,000 
-- or a total pay Greater than 100,000;

SELECT EmployeeName,Basepay,TotalPay 
FROM Salaries 
WHERE BasePay < 50000 
OR TotalPay > 100000;

-- 13 Show all emploees with a totalPay Bebefits value 
-- Between 125,000 and 150,000 and a job title containing the word 'Director';

SELECT EmployeeName,JobTitle,TotalPayBenefits
FROM Salaries
WHERE TotalPayBenefits 
 BETWEEN 125000 
 AND 150000 
 AND 
 JobTitle 
 LIKE '%Director%';

-- 14 Show all employees ordered By their total pay benefits in descnding order.

SELECT EmployeeName,TotalPayBenefits
 FROM Salaries 
 ORDER BY TotalPayBenefits
 desc;

-- 15 Show all job title with an average base pay of at least
-- 10,0000 and ordder them by the average bas pay in descending order;
SELECT JobTitle,avg(BasePay) as avg_BasePay
 FROM salaries 
 Group By Jobtitle 
 HAVING avg_BasePay > 100000
 Order BY avg_BasePay 
 DESC;

-- 16 Total Count of Job titel ;
SELECT JobTitle,Count(JobTitle) 
 AS total
 FROM Salaries 
 Group By JobTitle
 ORDER BY JobTitle;
 

--  17 Delete Notes Column;
ALTER TABLE Salaries
DROP column Notes;

-- 18 Update the basepay of  all employees with job title contaning 
-- "Manager" By increasing it BY 10%

update  Salaries
set BasePay = BasePay*1.1
WHERE JobTitle
LIKE "%Manager%" ;

-- DELETE all employ who have no overtime pay;

Delete from salaries  
WHERE OvertimePay = 0 ;

Select EmployeeName,OvertimePay fROM Salaries where OvertimePay = 0 ;
