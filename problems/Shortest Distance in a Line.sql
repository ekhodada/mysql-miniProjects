/*

Table: Point
+-------------+------+
| Column Name | Type |
+-------------+------+
| x           | int  |
+-------------+------+
x is the primary key column for this table.
Each row of this table indicates the position of a point on the X-axis.
 
Write an SQL query to report the shortest distance between any two points from the Point table.

*/

-- Solution 1:

elnaz khodadadi, [Mar 31, 2023 at 1:04:37 AM]:
select  
(abs(c1.x - c2.x)) as shortest 
from Point c1, Point c2 
where c1.x != c2.x 
order by abs(c1.x - c2.x) asc limit 1;

-- Solution 2:

select  min(abs(a.x-b.x))  AS shortest  
from Point a , point b 
where a.x != b.x
