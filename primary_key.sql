CREATE DATABASE IF NOT EXISTS college;
USE college;

CREATE TABLE temp1 (
    id INT NOT NULL,
    PRIMARY KEY (id)
);

-- composite primary key (only one primary key per table)
CREATE TABLE temp2 (
    id INT NOT NULL,
    cid INT NOT NULL,
    PRIMARY KEY (id, cid)
);
