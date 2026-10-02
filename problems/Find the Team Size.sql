/*

Table: Employee
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| employee_id   | int     |
| team_id       | int     |
+---------------+---------+
employee_id is the primary key for this table.
Each row of this table contains the ID of each employee and their respective team.
 
Write an SQL query to find the team size of each of the employees.
Return result table in any order.

*/

-- Solution 1:

select employee_id , count(team_id) over (partition by team_id) as team_size
from Employee
order by employee_id

-- Solution 2:

select e.employee_id, (select count(team_id) from Employee where e.team_id = team_id) as team_size
from Employee e
