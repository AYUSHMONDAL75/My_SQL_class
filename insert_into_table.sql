CREATE DATABASE IF NOT EXISTS college;
USE college;

CREATE TABLE IF NOT EXISTS student (
    rollno INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO student (rollno, name)
VALUES
(101, 'anil'),
(102, 'bhumika');

INSERT INTO student VALUES (103, 'chetan');

SELECT * FROM student;
