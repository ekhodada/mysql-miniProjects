/*

Table: Activity
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| user_id       | int     |
| session_id    | int     |
| activity_date | date    |
| activity_type | enum    |
+---------------+---------+
There is no primary key for this table, it may have duplicate rows.
The activity_type column is an ENUM of type ('open_session', 'end_session', 'scroll_down', 'send_message').
The table shows the user activities for a social media website. 
Note that each session belongs to exactly one user.
 
Write an SQL query to find the average number of sessions per user for a period of 30 days ending 2019-07-27 inclusively, 
rounded to 2 decimal places. The sessions we want to count for a user are those with at least one activity in that time period.

*/

-- Solution:

select ifnull(round(count(distinct session_id)/count(distinct user_id) ,2),0) as average_sessions_per_user
from Activity 
where activity_date <= '2019-07-27' and activity_date > '2019-06-27'
