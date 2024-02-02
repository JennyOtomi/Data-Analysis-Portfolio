-- Question 1 Population Census --
-- query the sum of the populations of all cities where the CONTINENT is 'Asia'-- 
select sum(a.population) from city a
join country b on a.countrycode = b.code
where b.continent = 'ASIA';


-- Question 2 query the names of all cities where the CONTINENT is 'Africa'.--
select a.name from city a
left join country b on 
a.countrycode = b.code
where b.continent = 'AFRICA';

-- Question 3 Query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.--
select country.continent, FLOOR(avg(city.population)) as AveragePopulation 
from city  
join country on city.countrycode = country.code
group by country.continent;




