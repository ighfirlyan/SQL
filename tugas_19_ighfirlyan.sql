use classicmodels;

select 
a.orderNumber as orderNumber, a.orderDate as orderDate,
c.customerName as customerName, c.city as city, c.country as country,
b.quantityOrdered as quantityOrdered, d.productName

from orders a

inner join orderdetails b on a.orderNumber = b.orderNumber
inner join customers c on a.customerNumber = c.customerNumber
inner join products d on b.productCode = d.productCode

where d.productName = '1992 Ferrari 360 Spider red' and a.orderDate between '2004-09-01' and '2004-12-01'
order by country, orderDate asc
;