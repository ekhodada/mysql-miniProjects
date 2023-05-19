/*

Table: Product
+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| product_id   | int     |
| product_name | varchar |
| unit_price   | int     |
+--------------+---------+
product_id is the primary key of this table.
Each row of this table indicates the name and the price of each product.
Table: Sales
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| seller_id   | int     |
| product_id  | int     |
| buyer_id    | int     |
| sale_date   | date    |
| quantity    | int     |
| price       | int     |
+-------------+---------+
This table has no primary key, it can have repeated rows.
product_id is a foreign key to the Product table.
buyer_id is never NULL. 
sale_date is never NULL. 
Each row of this table contains some information about one sale.
 
Write an SQL query that reports the buyers who have bought S8 but not iPhone. Note that S8 and iPhone are products present in the Product table.
Return the result table in any order.

*/

-- Solution:

select buyer_id from Sales inner join Product ON Sales.product_id = Product.product_id
group by buyer_id
having sum(product_name='S8') > 0 and sum(product_name='iPhone') = 0
