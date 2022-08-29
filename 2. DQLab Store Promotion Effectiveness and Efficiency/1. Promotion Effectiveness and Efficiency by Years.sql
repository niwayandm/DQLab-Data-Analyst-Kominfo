SELECT 
 YEAR(order_date) AS years, 
 SUM(sales) as sales, 
 SUM(discount_value) AS promotion_value,
 ROUND((SUM(discount_value)/SUM(sales))*100,2) AS burn_rate_percentage
FROM dqlab_sales_store
WHERE order_status = 'Order Finished'
GROUP BY years ORDER by YEARS;

console (output) ::
+-------+------------+-----------------+----------------------+
| years | sales      | promotion_value | burn_rate_percentage |
+-------+------------+-----------------+----------------------+
| 2009  | 4613872681 |       214330327 |                 4.65 |
| 2010  | 4059100607 |       197506939 |                 4.87 |
| 2011  | 4112036186 |       214611556 |                 5.22 |
| 2012  | 4482983158 |       225867642 |                 5.04 |
+-------+------------+-----------------+----------------------+
