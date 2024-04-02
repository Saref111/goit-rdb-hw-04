SELECT COUNT(*)
FROM order_details
LEFT JOIN orders ON order_details.order_id = orders.id
LEFT JOIN customers ON orders.customer_id = customers.id
LEFT JOIN products ON order_details.product_id = products.id
LEFT JOIN categories ON products.category_id = categories.id
LEFT JOIN employees ON orders.employee_id = employees.employee_id
LEFT JOIN shippers ON orders.shipper_id = shippers.id
LEFT JOIN suppliers ON products.supplier_id = suppliers.id;
-- Така ж сама кількість рядків як і в task4.1.sql

SELECT COUNT(*)
FROM order_details
RIGHT JOIN orders ON order_details.order_id = orders.id
RIGHT JOIN customers ON orders.customer_id = customers.id
RIGHT JOIN products ON order_details.product_id = products.id
RIGHT JOIN categories ON products.category_id = categories.id
RIGHT JOIN employees ON orders.employee_id = employees.employee_id
RIGHT JOIN shippers ON orders.shipper_id = shippers.id
RIGHT JOIN suppliers ON products.supplier_id = suppliers.id;
-- Помилка: недостатньо пам'яті для обробки запиту, але я думаю що помилка з'являється через неправильне використання оператора RIGHT JOIN. Оператор RIGHT JOIN повертає всі рядки з правої таблиці (таблиці, яка знаходиться справа від оператора JOIN), навіть якщо вони не мають відповідних записів в лівій таблиці (таблиці, яка знаходиться зліва від оператора JOIN).