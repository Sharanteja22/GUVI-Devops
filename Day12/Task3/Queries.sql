
SELECT order_id, product_name, unit_price
FROM orders
WHERE product_name LIKE '%Book%'
ORDER BY unit_price DESC
LIMIT 5;


SELECT order_id, product_name, order_date, order_status
FROM orders
WHERE order_date BETWEEN '2026-01-10' AND '2026-01-25'
ORDER BY order_date ASC;



SELECT
    c.category_id,
    c.category_name,
    o.order_id,
    o.product_name,
    o.order_status
FROM categories c
LEFT JOIN orders o
    ON c.category_id = o.category_id
ORDER BY c.category_name, o.order_id;


SELECT
    c.category_name,
    ROUND(AVG(o.quantity * o.unit_price), 2)
        AS average_order_value
FROM categories c
LEFT JOIN orders o
    ON c.category_id = o.category_id
GROUP BY c.category_id, c.category_name
ORDER BY average_order_value DESC;

