create database covid;

use covid;

select * from covid_19_india;
select * from covid_vaccine_statewise;
select * from  statewisetestingdetails;

-- 1. To find out the death total locally and globally
select sum(Deaths) from covid_19_india where `State/UnionTerritory`="Kerala";  -- locally

select sum(Deaths) from covid_19_india;  -- globally

alter table covid_19_india add column population int;

update covid_19_india set population = floor(1000 + rand() * 1000000)
order by  Sno
LIMIT 51;

select * from covid_19_india;

update covid_19_india set Deaths = floor(10 + rand() * 1000)
order by  Sno
LIMIT 51;

select * from covid_19_india;

alter table covid_19_india drop column ConfirmedIndianNational;
alter table covid_19_india drop column  ConfirmedForeignNational;
alter table covid_19_india drop column Cured;

select * from covid_19_india;

-- 2. To find out the death percentage locally and globally

select `State/UnionTerritory` , (sum(Deaths)/sum(population)) *100 as death_percentage  -- locally
from covid_19_india where `State/UnionTerritory`="Kerala" group by `State/UnionTerritory`;

alter table covid_19_india add column infected int;
update covid_19_india set infected=floor(10 + rand() *2000)
order by  Sno limit 51;

select * from covid_19_india;

-- 3.To find out the infected population percentage locally and globally
select `State/UnionTerritory`,(sum(infected)/sum(population)) * 100 as infected_percentage_local  -- locally
from covid_19_india  where `State/UnionTerritory`="Kerala" group by `State/UnionTerritory`;

select `State/UnionTerritory`,(sum(infected)/sum(population)) *100 as infected_percentage_golbal   -- globally
from covid_19_india group by `State/UnionTerritory`;



