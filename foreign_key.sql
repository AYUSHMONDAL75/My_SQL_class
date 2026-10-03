CREATE DATABASE IF NOT EXISTS college;
USE college;

CREATE TABLE customer (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE temp (
    cust_id INT,
    FOREIGN KEY (cust_id) REFERENCES customer(id)
);

-- with cascading actions
CREATE TABLE temp_cascade (
    cust_id INT,
    FOREIGN KEY (cust_id) REFERENCES customer(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

INSERT INTO customer VALUES (1, 'adam'), (2, 'bob');
INSERT INTO temp VALUES (1), (1), (NULL);
