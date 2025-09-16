CREATE DATABASE assignment1;
CREATE TABLE books(
	book_id INT PRIMARY KEY IDENTITY(1,1),
	book_name VARCHAR(100)
);

CREATE TABLE authors(
	author_id INT PRIMARY KEY IDENTITY(1,1),
	author VARCHAR(100)
);

CREATE TABLE publishers(
	publisher_id INT PRIMARY KEY IDENTITY(1,1),
	publisher_name VARCHAR(100)
)

INSERT INTO books(book_name)
VALUES('the kite runner'),('atomic habit'),('the fault in our stars');

INSERT INTO publishers(publisher_name)
VALUES('umer'),('sameer'),('zain');

INSERT INTO authors(author)
VALUES ('asif'),('danish'),('anas')

SELECT * FROM books

CREATE TABLE book_details(
id INT PRIMARY KEY IDENTITY(1,1),
book_id INT,
auth_id INT,
pub_id INT,
FOREIGN KEY(book_id) REFERENCES books(book_id),
FOREIGN KEY(auth_id) REFERENCES authors(author_id),
FOREIGN KEY(pub_id) REFERENCES publishers(publisher_id),
)


INSERT INTO book_details(book_id,auth_id, pub_id) VALUES (1,1,1);
INSERT INTO book_details(book_id,auth_id, pub_id) VALUES (2,2,2);
INSERT INTO book_details(book_id,auth_id, pub_id) VALUES (3,3,3);

SELECT * FROM book_details

SELECT b.book_name, a.author, p.publisher_name
FROM books AS b
JOIN book_details AS bd
ON b.book_id = bd.book_id
JOIN authors AS a 
ON a.author_id = bd.auth_id
JOIN publishers AS p 
ON p.publisher_id = bd.pub_id;