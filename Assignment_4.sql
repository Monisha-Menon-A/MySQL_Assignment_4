create database assignment_4;
use assignment_4;
create table country (id int primary key,
country_name varchar(50),
population varchar(50),
area varchar(50));
desc country;
insert into country(id, country_name, population, area)
values(1, 'India', '145 crore', '32 lakhs'),
(2, 'China', '141 crore', '97 lakhs'),
(3, 'USA', '35 crore', '93 lakhs'),
(4, 'UK', '6 crore', '2 lakhs'),
(5, 'Canada', '3 crore', '99 lakhs'),
(6, 'Australia', '2 crore', '50 lakhs'),
(7, 'Netherlands', '1 crore', '32 lakhs'),
(8, 'Sweden', '1 crore', '4 lakhs'),
(9, 'Austria', '91 lakhs', '3 lakhs'),
(10, 'Switzerland', '89 lakhs', '2 lakhs');
select*from country;

create table persons (id int primary key,
first_name varchar(50),
last_name varchar(50),
population_rating varchar(50),
country_id int,
country_name varchar(50));
desc persons;
insert into persons(id, first_name, last_name, population_rating,country_id,country_name)
values(1, 'Lisha', 'Thomas', '1', 1, 'India'),
(2, 'Irene', 'Dizooza', '10', 10, 'NULL'),
(3, 'Chaang', 'Yaang', '2', 2, 'China'),
(4, 'Thomas', 'Cook', '3', 3, 'USA'),
(5, 'Diana', 'William', '4', 4, 'UK'),
(6, 'Freddy', 'Dainz', '5', 5, 'Canada'),
(7, 'Hillary', 'Gomez', '6', 6, 'Australia'),
(8, 'william', 'Blake', '7', 7, 'NULL'),
(9, 'Right', 'Thomas', '8', 8, 'Sweden'),
(10 , 'Cindrella', 'John', '9', 9, 'Austria');
select*from persons;

#distinct country names from the Persons table
select distinct country_name from persons where country_name!='NULL';

#Select first names and last names from the Persons table with aliases
select first_name as FIRSTNAME, last_name as LASTNAME from persons;

#Find all persons with a rating greater than 4.0
select first_name, last_name, population_rating from persons where population_rating>4;

#Find countries with a population greater than 10 lakhs
select country_name, population from country where population>'10 lakhs';

#Find persons who are from 'USA' or have a rating greater than 4.5
select first_name, last_name, country_name, population_rating from persons where 
country_name='USA' or population_rating>4.5;

#Find all persons where the country name is NULL
select first_name, last_name, country_name from persons where country_name='NULL';

#Find all persons from the countries 'USA', 'Canada', and 'UK'
select first_name,last_name, country_name from persons where 
country_name in ('USA', 'Canada', 'UK');

#Find all persons not from the countries 'India' and 'Australia'
select first_name,last_name, country_name from persons where 
country_name not in ('India', 'Australia') ;

#Find all countries with a population between 5 lakhs and 20 lakhs
select country_name from country where population between '5 lakhs' and '20 lakhs';

#Find all countries whose names do not start with 'C'
select country_name from country where country_name not like 'C%';

