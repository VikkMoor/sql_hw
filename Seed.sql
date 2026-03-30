INSERT INTO users (name, email) VALUES
('Anna Petrova', 'anna@example.com'),
('Ivan Ivanov', 'ivan@example.com'),
('Maria Smirnova', 'maria@example.com'),
('John Doe', 'john@example.com'),
('Elena Sokolova', 'elena@example.com');

INSERT INTO products (name, price, stock) VALUES
('Laptop', 1200.00, 10),
('Headphones', 150.00, 30),
('Mouse', 25.00, 50),
('Keyboard', 70.00, 20),
('Monitor', 300.00, 15);

INSERT INTO orders (user_id, status) VALUES
(1, 'completed'),
(2, 'pending'),
(1, 'completed'),
(3, 'cancelled'),
(4, 'completed');

INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 1200.00),
(1, 2, 2, 150.00),

(2, 3, 1, 25.00),

(3, 2, 1, 150.00),
(3, 4, 1, 70.00),

(4, 5, 1, 300.00),

(5, 1, 1, 1200.00),
(5, 3, 2, 25.00);

