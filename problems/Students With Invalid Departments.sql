/*

Table: Departments
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| name          | varchar |
+---------------+---------+
id is the primary key of this table.
The table has information about the id of each department of a university.
 
Table: Students
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| name          | varchar |
| department_id | int     |
+---------------+---------+
id is the primary key of this table.
The table has information about the id of each student at a university and the id of the department he/she studies at.
 
Write an SQL query to find the id and the name of all students who are enrolled in departments that no longer exist.
Return the result table in any order.

*/

-- Solution:

select Students.id , Students.name 
from Departments
right join Students
on Departments.id = Students.department_id 
where Students.department_id not in  (select id from departments)
