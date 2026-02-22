-- Deleting the database
DROP database demo1;

-- Adding a Column to table
ALTER TABLE demo.employees ADD COLUMN emp_email VARCHAR(100);

ALTER TABLE demo.employees ADD COLUMN (hire_date DATE, manager_id INT);

ALTER TABLE demo.employees MODIFY COLUMN manager_id VARCHAR(3);

ALTER TABLE demo.employees DROP COLUMN manager_id;

DROP TABLE demo.employees;
-- Creating a table with constraints
CREATE TABLE demo.employees(
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(50) NOT NULL,
    emp_email VARCHAR(50) UNIQUE,
    emp_salary DECIMAL(8,2) CHECK (emp_salary > 0), -- 234567.92
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
    emp_department INT, 
    -- PRIMARY KEY (emp_id),
    FOREIGN KEY (emp_department) REFERENCES departments(dept_id)
);

CREATE TABLE demo.departments(
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(50) UNIQUE
);
-- Properties of a primary Key
-- Unique
-- Not NULL
-- Time Invariant
-- Accessible


-- Insert Data
INSERT INTO demo.employees (emp_name, emp_email, emp_salary, emp_department)
VALUES ('Vishwas', 'vishwas3@gmail.com', 32000, 1),
('Vishwas', 'vishwas1@gmail.com', 32000, 2),
('Vishwas', 'vishwas2@gmail.com', 32000, 1);

INSERT INTO demo.departments(dept_name)
VALUES ('FINANCE'),
('HR'),
('MARKETING');

-- See the records which are inserted
SELECT  * FROM demo.departments;
SELECT * FROM demo.employees;

-- Updating records
UPDATE demo.employees 
SET emp_department = 2
WHERE emp_id = 2;

-- deleting record single
DELETE FROM demo.employees WHERE emp_id = 11;

TRUNCATE TABLE demo.employees;

DELETE FROM demo.departments WHERE dept_id = 2;


CREATE TABLE demo.employees(
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(50) NOT NULL,
    emp_email VARCHAR(50) UNIQUE,
    emp_salary DECIMAL(8,2) CHECK (emp_salary > 0), -- 234567.92
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
    emp_department INT, 
    -- PRIMARY KEY (emp_id),
    FOREIGN KEY (emp_department) REFERENCES departments(dept_id) ON DELETE CASCADE
);

