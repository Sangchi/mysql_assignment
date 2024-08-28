create database mydata;

use mydata;

-- create covid_data table 

create table covid_data (
    Sno int primary key,
    Date text,
    Time text,
    StateUnionTerritory text,
    ConfirmedIndianNational int,
    ConfirmedForeignNational int,
    Cured int,
    Deaths int,
    Confirmed int
);

insert  into covid_data (Sno, Date, Time, StateUnionTerritory, ConfirmedIndianNational, ConfirmedForeignNational, Cured, Deaths, Confirmed)
values
(1, '2020-03-15', '10:00 AM', 'Kerala', 3, 0, 0, 0, 3),
(2, '2020-03-15', '10:00 AM', 'Delhi', 2, 1, 0, 0, 3),
(3, '2020-03-15', '10:00 AM', 'Rajasthan', 2, 0, 0, 0, 2),
(4, '2020-03-15', '10:00 AM', 'Uttar Pradesh', 8, 1, 0, 0, 9),
(5, '2020-03-15', '10:00 AM', 'Haryana', 14, 14, 0, 0, 28),
(6, '2020-03-15', '10:00 AM', 'Ladakh', 3, 0, 0, 0, 3),
(7, '2020-03-15', '10:00 AM', 'Tamil Nadu', 1, 0, 0, 0, 1),
(8, '2020-03-15', '10:00 AM', 'Jammu and Kashmir', 2, 0, 0, 0, 2),
(9, '2020-03-15', '10:00 AM', 'Punjab', 1, 0, 0, 0, 1),
(10, '2020-03-15', '10:00 AM', 'Karnataka', 6, 0, 0, 1, 6),
(11, '2020-03-15', '10:00 AM', 'Maharashtra', 14, 0, 0, 0, 14),
(12, '2020-03-15', '10:00 AM', 'Andhra Pradesh', 1, 0, 0, 0, 1),
(13, '2020-03-15', '10:00 AM', 'Telangana', 1, 0, 1, 0, 1),
(14, '2020-03-15', '10:00 AM', 'West Bengal', 0, 0, 0, 0, 0),
(15, '2020-03-15', '10:00 AM', 'Odisha', 1, 0, 0, 0, 1);


CREATE TABLE CovidStats (
    Date TEXT,
    Confirmed INT,
    Deaths INT,
    Recovered INT,
    Active INT,
    NewCases INT,
    NewDeaths INT,
    NewRecovered INT,
    DeathsPer100Cases DOUBLE,
    RecoveredPer100Cases DOUBLE,
    DeathsPer100Recovered DOUBLE,
    NumberOfCountries INT
);


select * from CovidStats;
select * from covid_data;
set global local_infile=1;
SHOW VARIABLES LIKE 'local_infile';




SELECT @@secure_file_priv;

-- import file from local directory
LOAD DATA  infile
"C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/day_wise.csv"
INTO TABLE CovidStats
FIELDS TERMINATED BY ","
LINES TERMINATED BY "\n"
IGNORE 1 LINES;

-- show table 
select * from CovidStats;



SELECT * 
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/covid_data.csv'
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
FROM covid_data;
