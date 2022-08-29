SELECT 
 YEAR(order_date) AS years, 
 COUNT(DISTINCT customer) AS number_of_customer
FROM dqlab_sales_store
WHERE order_status = 'Order Finished'
GROUP BY years
ORDER BY years;