SELECT 
 YEAR(order_date) as years, 
 product_sub_category, 
 product_category, 
 SUM(sales) AS sales, 
 SUM(discount_value) AS promotion_value, 
 ROUND((SUM(discount_value)/SUM(sales))*100,2) AS burn_rate_percentage
FROM dqlab_sales_store
WHERE order_status = 'Order Finished'
 AND YEAR(order_date) = 2012
GROUP BY 
 years, 
 product_sub_category, 
 product_category
ORDER by sales DESC;

console (output) ::
+-------+--------------------+
| years | number_of_customer |
+-------+--------------------+
|  2009 |                585 |
|  2010 |                593 |
|  2011 |                581 |
|  2012 |                594 |
+-------+--------------------+
