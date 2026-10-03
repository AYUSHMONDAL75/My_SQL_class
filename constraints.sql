CREATE DATABASE IF NOT EXISTS college;
USE college;

CREATE TABLE emp (
    id INT NOT NULL,
    email VARCHAR(50) UNIQUE,
    name VARCHAR(50) NOT NULL,
    age INT,
    city VARCHAR(20),
    salary INT DEFAULT 25000,
    CONSTRAINT age_check CHECK (age >= 18 AND city = 'Delhi')
);

INSERT INTO emp (id, email, name, age, city) VALUES (1, 'a@gmail.com', 'adam', 20, 'Delhi');

SELECT * FROM emp;
