USE mydb;

SELECT COUNT(*)
FROM order_details as od
LEFT JOIN products as p ON od.product_id = p.id
RIGHT JOIN categories as cat ON p.category_id = cat.id
LEFT JOIN suppliers as sup ON p.supplier_id = sup.id
RIGHT JOIN orders as ord ON od.order_id = ord.id
LEFT JOIN customers as cus ON ord.customer_id = cus.id
RIGHT JOIN shippers as ship ON ord.shipper_id = ship.id
LEFT JOIN employees as emp ON ord.employee_id = emp.employee_id
ORDER BY od.id