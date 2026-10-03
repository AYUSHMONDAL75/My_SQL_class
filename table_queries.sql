CREATE DATABASE IF NOT EXISTS college;
USE college;

CREATE TABLE IF NOT EXISTS student (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT IGNORE INTO student (rollno, name, marks, grade, city) VALUES
(101, 'anil', 78, 'C', 'Pune'),
(102, 'bhumika', 93, 'A', 'Mumbai'),
(103, 'chetan', 85, 'B', 'Mumbai'),
(104, 'dhruv', 96, 'A', 'Delhi'),
(105, 'emanuel', 12, 'F', 'Delhi'),
(106, 'farah', 82, 'B', 'Delhi');

-- create
CREATE TABLE IF NOT EXISTS employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT
);

-- insert
INSERT INTO employee (id, name, salary) VALUES (1, 'adam', 25000);

-- update
SET SQL_SAFE_UPDATES = 0;
UPDATE employee SET salary = 30000 WHERE id = 1;

-- alter
ALTER TABLE employee ADD COLUMN city VARCHAR(20);

-- truncate
TRUNCATE TABLE employee;

-- delete
DELETE FROM student WHERE rollno = 105;
