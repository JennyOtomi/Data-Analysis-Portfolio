# This project is to solve the following questions using MySql

# ▪ Write a query to show the album titles in ascending order.
# ▪ How many artists name start with B?
# ▪ What’s the customers name whose city is Oslo?
# ▪ How many customers do we have from Canada?
# ▪ What’s the average track unit price?
# ▪ What’s the sum of invoice total per billing country?
# ▪ Show the only 3 employees whose last names start with P

# Solutions
First and foremost, I ran the scripts to create the the database, tables and to insert values into each table.

#
# use chinook;

# -- Q1 Album Titles in Ascending order --
select * 
from Album 
order by Title desc;

# -- Q2 how many artist name starts with B--
Select count(name) 
from artist 
where name like 'B%';

# -- Q3 Customer's name whose City is Oslo --
select firstname, lastname 
from customer
where city = 'Oslo';

# -- Q4 How many customers do we have in Canada --
Select count(customerId) as totalCustomers
from customer
where country = 'canada';

# -- Q5 Average Track Unit Price --
select avg(unitPrice) 
from track;

# -- Q6 Invoice Total Per Billing Country --

select billingcountry, 
sum(total) as totalBill
from invoice 
group by billingcountry;

# -- Q7 Show only 3 employees whose lastname starts with P--
use chinook;
select * 
from employee 
where LastName like 'P%'
limit 3;
