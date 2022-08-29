SELECT 
 YEAR(order_date) AS years,
 SUM(sales) AS sales, 
 COUNT(order_quantity) AS number_of_order
FROM dqlab_sales_store
WHERE order_status = 'Order Finished'
GROUP BY YEAR(order_date)
ORDER BY years;