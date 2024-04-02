-- Створення схеми
CREATE SCHEMA LibraryManagement;

CREATE TABLE LibraryManagement.authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(255)
);

CREATE TABLE LibraryManagement.genres (
    genre_id INT AUTO_INCREMENT PRIMARY KEY,
    genre_name VARCHAR(255)
);

CREATE TABLE LibraryManagement.books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    publication_year YEAR,
    author_id INT,
    genre_id INT,
    FOREIGN KEY (author_id) REFERENCES LibraryManagement.authors(author_id),
    FOREIGN KEY (genre_id) REFERENCES LibraryManagement.genres(genre_id)
);

CREATE TABLE LibraryManagement.users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255),
    email VARCHAR(255)
);

CREATE TABLE LibraryManagement.borrowed_books (
    borrow_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT,
    user_id INT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES LibraryManagement.books(book_id),
    FOREIGN KEY (user_id) REFERENCES LibraryManagement.users(user_id)
);
