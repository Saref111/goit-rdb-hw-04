SELECT categories.name, 
       COUNT(*) AS total_rows,
       AVG(order_details.quantity) AS average_quantity
FROM order_details
INNER JOIN products ON order_details.product_id = products.id
INNER JOIN categories ON products.category_id = categories.id
GROUP BY categories.name;

SELECT categories.category_name, 
       COUNT(*) AS total_rows,
       AVG(order_details.quantity) AS average_quantity
FROM order_details
INNER JOIN products ON order_details.product_id = products.id
INNER JOIN categories ON products.category_id = categories.id
GROUP BY categories.category_name
HAVING AVG(order_details.quantity) > 21;
