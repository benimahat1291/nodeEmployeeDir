DROP DATABASE IF EXISTS employees_db;
CREATE DATABASE employees_db;
USE employees_db;

CREATE TABLE department(
    id integer auto_increment not null,
    name varchar(30) not null,
    primary key(id)
);

CREATE TABLE role(
    id integer auto_increment not null,
    title varchar(30) not null,
    salary decimal not null,
    department_id integer not null,
    primary key(id)
);

CREATE TABLE employees(
    id integer auto_increment not null,
    first_name varchar(30) not null,
    last_name varchar(30) not null,
    role_id integer not null,
    manager_id integer,
    primary key(id)
);
