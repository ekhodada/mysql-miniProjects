/*

Table: Triangle
+-------------+------+
| Column Name | Type |
+-------------+------+
| x           | int  |
| y           | int  |
| z           | int  |
+-------------+------+
(x, y, z) is the primary key column for this table.
Each row of this table contains the lengths of three line segments.
 
Write an SQL query to report for every three line segments whether they can form a triangle.
Return the result table in any order.

*/

-- Solution 1:

select x, y, z,  
if(x+y>z and x+z>y and y+z>x,'Yes', 'No') as triangle 
from Triangle

-- Solution 2:

select x, y, z,  
( case when (x+y>= z and x+z>= y and y+z >= x) then 'Yes' 
Else 'No' 
end 
) as triangle from Triangle
