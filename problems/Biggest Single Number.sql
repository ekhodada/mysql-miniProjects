/*

Table: MyNumbers
+-------------+------+
| Column Name | Type |
+-------------+------+
| num         | int  |
+-------------+------+
There is no primary key for this table. It may contain duplicates.
Each row of this table contains an integer.
 
A single number is a number that appeared only once in the MyNumbers table.
Write an SQL query to report the largest single number. If there is no single number, report null.

*/

-- Solution:

select ifnull( 
(select num from MyNumbers  
group by num 
having count(num)=1  
order by num desc  
limit 1), null) AS num;
