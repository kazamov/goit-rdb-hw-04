USE mydb;

SELECT 
	cat.name AS category_name,
    COUNT(*) AS total_records_in_group,
    AVG(od.quantity) AS average_quantity
FROM order_details as od
INNER JOIN products as p ON od.product_id = p.id
INNER JOIN categories as cat ON p.category_id = cat.id
INNER JOIN suppliers as sup ON p.supplier_id = sup.id
INNER JOIN orders as ord ON od.order_id = ord.id
INNER JOIN customers as cus ON ord.customer_id = cus.id
INNER JOIN shippers as ship ON ord.shipper_id = ship.id
INNER JOIN employees as emp ON ord.employee_id = emp.employee_id
GROUP BY cat.name
HAVING average_quantity > 21
ORDER BY cat.name;