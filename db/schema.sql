DROP DATABASE IF EXISTS employees_db;
CREATE DATABASE employees_db
\c employees_db;

CREATE TABLE department (
    id INTEGER NOT NULL,
    department_name VARCHAR(30) UNIQUE NOT NULL 
);

CREATE TABLE role (
    id INTEGER NOT NULL,
    title VARCHAR(30) UNIQUE NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INTEGER NOT NULL
);

CREATE TABLE employee (
    id INTEGER NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INTEGER NOT NULL,
    manager_id INTEGER
);