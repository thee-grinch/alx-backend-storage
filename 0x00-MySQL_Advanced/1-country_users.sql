-- creates a table users with the following requirements
-- 1. id is a primary key and auto increments
-- 2. email is a unique field
-- 3. name is a string
-- country is a enum

CREATE TABLE IF NOT EXISTS users (
    id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255),
    country ENUM('US', 'CO', 'TN') DEFAULT 'US'
);