CREATE DATABASE Carfour
go

use Carfour
go

create schema sales
go

create schema production
go


CREATE TABLE production.branches(
	branch_id INT IDENTITY (1, 1) PRIMARY KEY,
	phone VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL UNIQUE,
	address VARCHAR(255) NOT NULL,
);
CREATE TABLE production.department(
	department_id INT IDENTITY (1, 1) PRIMARY KEY,
	department_name VARCHAR(255) NOT NULL,
	branch_id INT
	FOREIGN KEY (branch_id) REFERENCES production.branches(branch_id)
);
CREATE TABLE production.supplier(
	supplier_id INT IDENTITY(1, 1) PRIMARY KEY,
	supplier_name VARCHAR(255) NOT NULL,
	address VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL UNIQUE,
	phone VARCHAR(20) NOT NULL,
);
CREATE TABLE production.products(
	product_id INT IDENTITY (1, 1) PRIMARY KEY,
	product_name VARCHAR(255) NOT NULL,
	price DECIMAL (10, 2) NOT NULL,
	brand VARCHAR(255),
	supplier_id INT,
	department_id INT
	FOREIGN KEY (supplier_id) REFERENCES production.supplier(supplier_id),
	FOREIGN KEY (department_id) REFERENCES production.department(department_id),
);
CREATE TABLE sales.employees(
	employee_id INT IDENTITY(1, 1) PRIMARY KEY,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	address VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL UNIQUE,
	phone VARCHAR(20) NOT NULL,
	gender VARCHAR(30) NOT NULL,
	branch_id INT
	FOREIGN KEY (branch_id) REFERENCES production.branches(branch_id)
);
CREATE TABLE sales.customers(
	customer_id INT IDENTITY(1, 1) PRIMARY KEY,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	address VARCHAR(255),
	email VARCHAR(255) UNIQUE,
	phone VARCHAR(20),
);
CREATE TABLE sales.orders(
	order_id INT IDENTITY(1,1) PRIMARY KEY,
	order_date DATE NOT NULL,
	customer_id INT,
	employee_id INT,
	branch_id INT,
	FOREIGN KEY (customer_id) REFERENCES sales.customers(customer_id),
	FOREIGN KEY (employee_id) REFERENCES sales.employees(employee_id),
	FOREIGN KEY (branch_id) REFERENCES production.branches(branch_id)
);

CREATE TABLE production.storage(
	storage_id INT,
	quantity INT NOT NULL,
	product_id INT,
	branch_id INT
	FOREIGN KEY (product_id) REFERENCES production.products(product_id),
	FOREIGN KEY (branch_id) REFERENCES production.branches(branch_id)
);
CREATE TABLE sales.promotion(
	promo_code VARCHAR(255) PRIMARY KEY,
	discount_value DECIMAL NOT NULL,
	start_date date NOT NULL,
	end_date date NOT NULL,
	product_id INT
	FOREIGN KEY (product_id) REFERENCES production.products(product_id)
);

CREATE TABLE sales.cart(
	order_id INT,
	product_id INT,
	quantity INT,
	total_price DECIMAL(10, 2),
	promo_code VARCHAR(255),
	FOREIGN KEY (product_id) REFERENCES production.products(product_id),
	FOREIGN KEY (order_id) REFERENCES sales.orders(order_id),
	FOREIGN KEY (promo_code) REFERENCES sales.promotion(promo_code)
);
