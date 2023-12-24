CREATE DATABASE Library
GO

use Library
GO

CREATE TABLE sections(
	section_id INT PRIMARY KEY,
	section_name VARCHAR(255) NOT NULL , 
    books_amount INT not null , 
);
CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    category VARCHAR(100),
    purchase_price DECIMAL(10, 2),
    date_purchased DATE,
	section_id INT,
	FOREIGN KEY (section_id) REFERENCES sections(section_id)
);
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    user_fname VARCHAR(100) NOT NULL,
    user_lname VARCHAR(100) NOT NULL,
    address VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20) ,
    email VARCHAR(100) UNIQUE, 
);
CREATE TABLE staff(
	staff_id INT  PRIMARY KEY,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	staff_address VARCHAR(255) NOT NULL,
	phone_number VARCHAR(20) NOT NULL,
	email VARCHAR(255) NOT NULL UNIQUE,
	position VARCHAR(100) NOT NULL,

); 
CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    book_id INT,
    user_id INT,
	staff_id INT,
    borrow_date DATE,
    return_date DATE,
    status VARCHAR(20),
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (book_id) REFERENCES books(book_id),
	FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
);

CREATE TABLE reviews(
	review_id INT PRIMARY KEY,
	rating DECIMAL(10,1),
	book_id int,
	user_id int,
	FOREIGN KEY(user_id) REFERENCES users(user_id),
	FOREIGN KEY(book_id) REFERENCES books(book_id),
);

