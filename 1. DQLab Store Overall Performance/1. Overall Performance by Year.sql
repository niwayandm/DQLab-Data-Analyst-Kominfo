SELECT 
 YEAR(order_date) AS years,
 SUM(sales) AS sales, 
 COUNT(order_quantity) AS number_of_order
FROM dqlab_sales_store
WHERE order_status = 'Order Finished'
GROUP BY YEAR(order_date)
ORDER BY years;

console (output) ::
+-------+------------+-----------------+
| years | sales      | number_of_order |
+-------+------------+-----------------+
| 2009  | 4613872681 |            1244 |
| 2010  | 4059100607 |            1248 |
| 2011  | 4112036186 |            1178 |
| 2012  | 4482983158 |            1254 |
+-------+------------+-----------------+
