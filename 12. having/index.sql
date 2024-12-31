- HAVING CLAUSE:

SELECT p_name, SUM(total_price) FROM billing_info 
GROUP BY p_name
WHERE SUM(total_price) > 1500


SELECT product_name, SUM(total_price) FROM billing_info 
GROUP BY product_name
HAVING SUM(total_price) > 500



- GROUP BY ROLLUP:

SELECT 
    COALESCE(product_name,'Total')
    product_name,
    SUM(total_price) 
FROM billing_info
ORDER BY SUM(total_price)
GROUP BY ROLLUP(product_name)