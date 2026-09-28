# Write your MySQL query statement below
select p.product_id , IFNULL(ROUND(SUM(p.price*u.units)/ SUM(u.units),2),0) as average_price
from Prices p 
left join unitsSold u
on p.product_id = u.product_id
AND purchase_date >= start_date
AND purchase_date <= end_date
group by product_id