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

-- arithmetic operators: + - * / %
SELECT name, marks + 10 AS add_ten FROM student;
SELECT name, marks - 10 AS sub_ten FROM student;
SELECT name, marks * 2 AS mul_two FROM student;
SELECT name, marks / 2 AS div_two FROM student;
SELECT name, marks % 2 AS modulus FROM student;

-- comparison operators: = != > >= < <=
SELECT * FROM student WHERE marks = 85;
SELECT * FROM student WHERE marks != 85;
SELECT * FROM student WHERE marks > 85;
SELECT * FROM student WHERE marks >= 85;
SELECT * FROM student WHERE marks < 85;
SELECT * FROM student WHERE marks <= 85;
