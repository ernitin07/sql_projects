-- create a new database db_sql_tutorial
DROP DATABASE IF EXISTS db_sql_tutorial;
CREATE DATABASE db_sql_tutorial;
USE db_sql_tutorial;

-- create table customers
DROP TABLE IF EXISTS db_sql_tutorial.customers;
CREATE TABLE db_sql_tutorial.customers (
  customer_id INT(10) NOT NULL AUTO_INCREMENT,
  first_name  VARCHAR(50) NOT NULL,
  last_name   VARCHAR(50) NOT NULL,
  country     VARCHAR(50) NULL,
  score       INT(32) NULL,
  PRIMARY KEY (customer_id ));

-- Insert customers data
INSERT INTO db_sql_tutorial.customers VALUES (1,'Maria', 'Cramer ', 'Germany',350);
INSERT INTO db_sql_tutorial.customers VALUES (2,'John','Steel','USA', 900);
INSERT INTO db_sql_tutorial.customers VALUES (3,'Georg',' Pipps ', 'UK', 750);
INSERT INTO db_sql_tutorial.customers VALUES (4,'Martin','Müller','Germany', 500);
INSERT INTO db_sql_tutorial.customers VALUES (5,'Peter','Franken','USA', NULL);

-- create table orders
DROP TABLE IF EXISTS db_sql_tutorial.orders;
CREATE TABLE db_sql_tutorial.orders (
  order_id    INT(10) NOT NULL AUTO_INCREMENT,
  customer_id INT(10) NOT NULL,
  order_date  DATE  NULL,
  quantity    INT(32) NULL,
  PRIMARY KEY (order_id));

-- Insert orders data
INSERT INTO db_sql_tutorial.orders VALUES (1001,1,'2021-01-11',250);
INSERT INTO db_sql_tutorial.orders VALUES (1002,2,'2021-04-05',1150);
INSERT INTO db_sql_tutorial.orders VALUES (1003,3,'2021-06-18',500);
INSERT INTO db_sql_tutorial.orders VALUES (1004,6,'2021-08-31',750);

-- create table employees
DROP TABLE IF EXISTS db_sql_tutorial.employees;
CREATE TABLE db_sql_tutorial.employees (
  emp_id      INT(10) NOT NULL AUTO_INCREMENT,
  first_name  VARCHAR(50) NOT NULL,
  last_name   VARCHAR(50) NOT NULL,
  emp_country VARCHAR(50) NULL,
  salary      INT(32) NULL,
  PRIMARY KEY (emp_id ));

-- Insert employees data
INSERT INTO db_sql_tutorial.employees VALUES (1,'John', 'Steel', 'USA', 55000);
INSERT INTO db_sql_tutorial.employees VALUES (2,'Ann', 'Labrune', 'France', 75000);
INSERT INTO db_sql_tutorial.employees VALUES (3,'Marie', 'Bertrand', 'Brazil', 75000);
INSERT INTO db_sql_tutorial.employees VALUES (4,'Georg', 'Afonso', 'UK', 75000);
INSERT INTO db_sql_tutorial.employees VALUES (5,'Marie', 'Steel', 'UK', 75000);