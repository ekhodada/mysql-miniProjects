/*

Table: Countries
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| country_id    | int     |
| country_name  | varchar |
+---------------+---------+
country_id is the primary key for this table.
Each row of this table contains the ID and the name of one country.
 
Table: Weather
+---------------+------+
| Column Name   | Type |
+---------------+------+
| country_id    | int  |
| weather_state | int  |
| day           | date |
+---------------+------+
(country_id, day) is the primary key for this table.
Each row of this table indicates the weather state in a country for one day.
 
Write an SQL query to find the type of weather in each country for November 2019.
The type of weather is:
 • Cold if the average weather_state is less than or equal 15,
 • Hot if the average weather_state is greater than or equal to 25, and
 • Warm otherwise.
Return result table in any order.

*/

-- Solution:

select  country_name , case 
when avg(weather_state) <= 15 then 'Cold'
when avg(weather_state) >= 25 then 'Hot'
else 'Warm'
end AS weather_type
from Countries
inner join Weather
on Countries.country_id = Weather.country_id
where day >= '2019-11-01' and day < '2019-12-1'
group by country_name
