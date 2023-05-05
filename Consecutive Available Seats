/*

Table: Cinema
+-------------+------+
| Column Name | Type |
+-------------+------+
| seat_id     | int  |
| free        | bool |
+-------------+------+
seat_id is an auto-increment primary key column for this table.
Each row of this table indicates whether the ith seat is free or not. 1 means free while 0 means occupied.
 
Write an SQL query to report all the consecutive available seats in the cinema.
Return the result table ordered by seat_id in ascending order.
The test cases are generated so that more than two seats are consecutively available.

*/

-- Solution:

select distinct A.seat_id from Cinema A 
inner join Cinema B 
ON abs(A.seat_id-B.seat_id)=1 
where A.free = 1 and B.free =1  
order by seat_id ASC;
