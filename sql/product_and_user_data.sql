CREATE TABLE users (
    user_ID INT PRIMARY KEY,
    user_name VARCHAR(50),
    user_email VARCHAR(50),
    user_password VARCHAR(50)
);

CREATE TABLE products (
    product_ID INT PRIMARY KEY,
    product_name VARCHAR(50),
    product_price DECIMAL(10, 2),
    product_description VARCHAR(50)
);

INSERT INTO users (user_ID, user_name, user_email, user_password) VALUES
(1, 'jondoe1234', 'john@example.com', 'Password1234'),

INSERT INTO products (product_ID, product_name, product_price, product_description) VALUES
(1, 'LG TV', 20000.00, 'A smart TV with a great display.'),
(2, 'Iphone 16', 15000.00, 'A high performence phone with a great camera.'),
(3, 'JBL Headphones', 1299,90, 'A great pair of headphones with noise cancellation.');