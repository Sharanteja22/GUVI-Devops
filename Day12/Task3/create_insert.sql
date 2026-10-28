
CREATE DATABASE ecommerce_sales_db;

USE ecommerce_sales_db;


CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category_id INT,
    quantity INT NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    order_status VARCHAR(20) NOT NULL,
    order_date DATE NOT NULL,
    FOREIGN KEY (category_id)
        REFERENCES categories(category_id)
);



INSERT INTO categories VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Home'),
(4, 'Books');

INSERT INTO orders VALUES
(1001, 'Wireless Headphones', 1, 2, 2500.00, 'Delivered', '2026-01-05'),
(1002, 'T-Shirt', 2, 3, 500.00, 'Delivered', '2026-01-07'),
(1003, 'Office Chair', 3, 1, 4500.00, 'Pending', '2026-01-10'),
(1004, 'Programming Book', 4, 2, 800.00, 'Delivered', '2026-01-12'),
(1005, 'Smart Watch', 1, 1, 3500.00, 'Cancelled', '2026-01-15'),
(1006, 'Jeans', 2, 2, 1200.00, 'Delivered', '2026-01-18'),
(1007, 'Table Lamp', 3, 2, 1500.00, 'Pending', '2026-01-20'),
(1008, 'Laptop', 1, 1, 55000.00, 'Delivered', '2026-01-22'),
(1009, 'Novel', 4, 3, 400.00, 'Delivered', '2026-01-25'),
(1010, 'Jacket', 2, 1, 2200.00, 'Cancelled', '2026-01-28');



SHOW TABLES;

SELECT COUNT(*) AS total_orders
FROM orders;

SELECT * FROM orders;

