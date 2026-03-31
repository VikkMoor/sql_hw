SELECT 
    o.order_id,
    u.name,
    o.order_date,
    o.status
FROM orders o
JOIN users u ON o.user_id = u.user_id;


SELECT 
    o.order_id,
    u.name,
    o.order_date,
    o.status
FROM orders o
JOIN users u ON o.user_id = u.user_id;


SELECT 
    u.name AS user_name,
    o.order_id,
    p.name AS product_name,
    oi.quantity,
    oi.price
FROM users u
JOIN orders o ON u.user_id = o.user_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id;

-----------------------------

SELECT * FROM products
ORDER BY price DESC;

-----------------------------

SELECT * FROM orders
WHERE status = 'completed';


SELECT * FROM products
WHERE price > 100;


SELECT *
FROM products
WHERE price BETWEEN 50 AND 500;

------------------------------

SELECT 
    user_id,
    COUNT(*) AS total_orders
FROM orders
GROUP BY user_id;


SELECT 
    u.name,
    COUNT(o.order_id) AS total_orders
FROM users u
JOIN orders o ON u.user_id = o.user_id
GROUP BY u.name;


SELECT 
    u.name,
    AVG(oi.price) AS avg_order_price
FROM users u
JOIN orders o ON u.user_id = o.user_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY u.name;

------------------------------

UPDATE products
SET price = 1300
WHERE product_id = 1;

------------------------------

DELETE FROM order_items
WHERE order_id = 4;

DELETE FROM orders
WHERE order_id = 4;

