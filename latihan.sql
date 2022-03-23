# Query Language

# Langkah Pertama adalah memilih database yang akan kita gunakan
use classicmodels;

# simple select
SELECT * 
FROM customers;

SELECT customerNumber as id, customerName as name
FROM customers;

SELECT contactFirstName as First, contactLastName as Last 
FROM customers;

#penggabungan dua kolom
SELECT concat(contactFirstName, contactLastName) as Name
FROM customers;

# memanggil dua tabel
SELECT 
	cu.customerNumber,
    cu.customerName,
    concat(em.lastName,' ',em.firstName) EmployeeName
FROM
	customers cu,
    employees em
    ;

# select where
# query yang digunakan saat kita ingin menerapkan suatu syarat

SELECT customerNumber as id, customerName as name
FROM customers
WHERE 125 < customerNumber and customerNumber < 150
;

SELECT customerNumber as id, customerName as name
FROM customers
WHERE customerNumber BETWEEN 125 AND 150
;

SELECT *
FROM customers
where country = 'USA';

# memanggil dua tabel
SELECT 
	cu.customerNumber,
    cu.customerName,
    concat(em.lastName,' ',em.firstName) EmployeeName
FROM
	customers cu,
    employees em
WHERE 
	cu.salesRepEmployeeNumber = em.employeeNumber
;
    
# select joins
-- SELECT column_list
-- FROM table_1
-- INNER JOIN table_2 ON join_condition;
-- WHERE

select * 
from orders
limit 10
;

select a.orderNumber, a.orderDate, b.customerName, b.country, c.productCode, c.quantityOrdered
from orders a
inner join customers b on a.customerNumber = b.customerNumber
inner join orderdetails c on a.orderNumber = c.orderNumber
where b.country in ("Spain", "USA")
;

# menggabungkan dua tabel
SELECT 
	cu.customerNumber,
    cu.customerName,
    concat(em.lastName,' ',em.firstName) EmployeeName
FROM
	customers cu
INNER JOIN employees em on	cu.salesRepEmployeeNumber = em.employeeNumber
ORDER BY customerNumber DESC
;