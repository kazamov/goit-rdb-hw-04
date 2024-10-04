USE mydb;

SELECT 
	od.id, p.name, p.unit, p.price, cat.name as category_name, sup.name as supplier_name, 
    sup.phone as supplier_phone, ord.date as order_date, cus.name as customer_name,
    cus.contact as customer_phone, ship.name as shipper_name, ship.phone as shipper_phone,
    CONCAT(emp.first_name, ' ', emp.last_name) as employee_name
FROM order_details as od
INNER JOIN products as p ON od.product_id = p.id
INNER JOIN categories as cat ON p.category_id = cat.id
INNER JOIN suppliers as sup ON p.supplier_id = sup.id
INNER JOIN orders as ord ON od.order_id = ord.id
INNER JOIN customers as cus ON ord.customer_id = cus.id
INNER JOIN shippers as ship ON ord.shipper_id = ship.id
INNER JOIN employees as emp ON ord.employee_id = emp.employee_id
ORDER BY od.id