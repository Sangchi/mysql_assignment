create database kaggledata;

use kaggledata;
 
 -- Using JOINS to combine the covid_deaths and covid_vaccine tables :

select covid_19_clean_complete.`Country/Region`,covid_19_india.`State/UnionTerritory`
 from covid_19_clean_complete inner join covid_19_india on covid_19_clean_complete.`Date`=covid_19_india.`Date`;
 
 -- multiple tables using join operations
 
 select
    c.`Country/Region`, 
    c.`Deaths`,
    d.`State/UnionTerritory`, 
    f.`Recovered`,
    f.`Deaths` as `DayWiseDeaths`, 
    g.`New cases`, 
    g.`New deaths`, 
    g.`New recovered`,
    h.`Negative`, 
    h.`Positive`,
    i.`Province_State`, 
    i.`Country_Region`
from
    covid_19_clean_complete c
join
    covid_19_india d on c.`Date` = d.`Date`
join 
    day_wise f on c.`Date` = f.`Date`
join  
    full_grouped g on c.`Date` = g.`Date`
join  
    statewisetestingdetails h on c.`Date` = h.`Date`
join  
    usa_county_wise i on c.`Date` = i.`Date`;
    
    



        

