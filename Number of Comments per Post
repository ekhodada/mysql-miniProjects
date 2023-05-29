/*

Table: Submissions
+---------------+----------+
| Column Name   | Type     |
+---------------+----------+
| sub_id        | int      |
| parent_id     | int      |
+---------------+----------+
There is no primary key for this table, it may have duplicate rows.
Each row can be a post or comment on the post.
parent_id is null for posts.
parent_id for comments is sub_id for another post in the table.
 
Write an SQL query to find the number of comments per post. The result table should contain post_id and its corresponding number_of_comments.
The Submissions table may contain duplicate comments. You should count the number of unique comments per post.
The Submissions table may contain duplicate posts. You should treat them as one post.
The result table should be ordered by post_id in ascending order.

*/

-- Solution:

select a.sub_id as post_id, count(distinct b.sub_id) as number_of_comments
from Submissions a left join Submissions b on (a.sub_id = b.parent_id)
where a.parent_id is null
group by a.sub_id
