SELECT 
 YEAR(order_date) AS years, 
 COUNT(DISTINCT customer) AS number_of_customer
FROM dqlab_sales_store
WHERE order_status = 'Order Finished'
GROUP BY years
ORDER BY years;

console (output) ::
+-------+--------------------+
| years | number_of_customer |
+-------+--------------------+
| 2009  |                585 |
| 2010  |                593 |
| 2011  |                581 |
| 2012  |                594 |
+-------+--------------------
