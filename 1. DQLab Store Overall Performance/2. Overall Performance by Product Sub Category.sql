SELECT 
 YEAR(order_date) AS years, 
 product_sub_category, 
 SUM(sales) AS sales
FROM dqlab_sales_store
WHERE order_status = 'Order Finished'
 AND YEAR(order_date) > 2010
GROUP BY years, product_sub_category
ORDER BY years, sales DESC;