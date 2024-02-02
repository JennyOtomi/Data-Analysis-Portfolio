use chinook;

-- Q1 Album Titles in Ascending order --
select * 
from Album 
order by Title desc;

-- Q2 how many artist name starts with B--
Select count(name) 
from artist 
where name like 'B%';

-- Q3 Customer's name whose City is Oslo --
select firstname, lastname 
from customer
where city = 'Oslo';

-- Q4 How many customers do we have in Canada --
Select count(customerId) as totalCustomers
from customer
where country = 'canada';

-- Q5 Average Track Unit Price --
select avg(unitPrice) 
from track;

-- Q6 Invoice Total Per Billing Country --

select billingcountry, 
sum(total) as totalBill
from invoice 
group by billingcountry;

-- Q7 Show only 3 employees whose lastname starts with P--
use chinook;
select * 
from employee 
where LastName like 'P%'
limit 3;

