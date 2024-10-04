USE LibraryManagement;

INSERT INTO authors (author_name)
VALUES ('Joanne Rowling'), ('John Ronald Reuel Tolkien');

INSERT INTO genres (genre_name)
VALUES ('Fantasy'), ('Mystery');

INSERT INTO books (title, publication_year, author_id, genre_id)
VALUES 
	("Harry Potter and the Sorcerer's Stone", 1997, 1, 1), 
    ('Harry Potter and the Chamber of Secrets', 1998, 1, 1),
    ('The Hobbit, or There and Back Again', 1937, 2, 1),
    ('The Fellowship of the Ring', 1954, 2, 1);
    
INSERT INTO users (username, email)
VALUES ('John', 'john.smith@gmail.com'), ('Anna', 'anna.smith@gmail.com');

INSERT INTO borrowed_books (book_id, user_id, borrow_date, return_date)
VALUES (1, 1, '2024-10-04', null), (3, 2, '2024-09-01', '2024-10-01');