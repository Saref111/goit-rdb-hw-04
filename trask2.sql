INSERT INTO LibraryManagement.authors (author_name)
VALUES ('John Smith'), ('Jane Doe');

INSERT INTO LibraryManagement.genres (genre_name)
VALUES ('Fiction'), ('Mystery');

INSERT INTO LibraryManagement.books (title, publication_year, author_id, genre_id)
VALUES ('The Great Gatsby', 1925, 1, 1),
       ('Murder on the Orient Express', 1934, 2, 2);

INSERT INTO LibraryManagement.users (username, email)
VALUES ('user1', 'user1@example.com'),
       ('user2', 'user2@example.com');

INSERT INTO LibraryManagement.borrowed_books (book_id, user_id, borrow_date, return_date)
VALUES (1, 1, '2024-04-01', '2024-05-01'),
       (2, 2, '2024-04-02', NULL);
