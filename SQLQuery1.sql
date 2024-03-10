CREATE DATABASE empleados

CREATE TABLE IF NOT EXISTS empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    married BOOLEAN,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(100) UNIQUE,
    genre CHAR(1),
    salary NUMERIC(9,2) CHECK (salary > 0),
    birth_date DATE,
    start_at TIME
);

ALTER TABLE empleados
MODIFY COLUMN salary NUMERIC(9,2) CHECK (salary >= 500);

SELECT * FROM empleados

INSERT INTO empleados (married, name, email, genre, salary, birth_date, start_at)
VALUES (FALSE, 'Nancy', 'nan@gmail.com', 'F', 501, '2007-01-06', '06:02:47')

