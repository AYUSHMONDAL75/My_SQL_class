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

-- (i) add column
ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19;

-- (ii) drop column
ALTER TABLE student
DROP COLUMN age;

-- (iii) rename table
ALTER TABLE student
RENAME TO stu;

ALTER TABLE stu
RENAME TO student;

-- (iv) change column (rename)
ALTER TABLE student
CHANGE COLUMN name full_name VARCHAR(50);

ALTER TABLE student
CHANGE COLUMN full_name name VARCHAR(50);

-- (v) modify column (modify datatype / constraint)
ALTER TABLE student
MODIFY COLUMN grade VARCHAR(2) NOT NULL DEFAULT 'F';

DESC student;
