-- Create the database
CREATE DATABASE Library_Management;
USE Library_Management;

-- Create Books table
CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,    -- Unique identifier for each book
    title VARCHAR(255) NOT NULL,               -- Title of the book
    author_id INT,                             -- Foreign key for author
    category_id INT,                           -- Foreign key for category
    publisher VARCHAR(255),                    -- Publisher of the book
    year_published YEAR,                       -- Year the book was published
    UNIQUE(title)                              -- Ensure no duplicate book titles
    FOREIGN KEY (author_id) REFERENCES Authors(author_id),
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);


-- Insert books
INSERT INTO Books (title, author_id, category_id, publisher, year_published) VALUES
('Harry Potter and the Sorcerer\'s Stone', 1, 1, 'Bloomsbury', 1997),
('1984', 2, 2, 'Secker & Warburg', 1949),
('The Hobbit', 3, 3, 'George Allen & Unwin', 1937),
('Things Fall Apart', 4, 4, 'Heinemann', 1958),
('Petals of Blood', 5, 5, 'East African Educational Publishers', 1977),
('The Shining', 6, 6, 'Doubleday', 1977),
('Norwegian Wood', 7, 11, 'Kodansha', 1987),
('Pride and Prejudice', 8, 7, 'T. Egerton, Whitehall', 1813),
('The Adventures of Tom Sawyer', 9, 10, 'American Publishing Company', 1876),
('War and Peace', 10, 9, 'The Russian Messenger', 1869),
('The Da Vinci Code', 11, 6, 'Doubleday', 2003);


-- Create Authors table
CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,  -- Unique identifier for each author
    name VARCHAR(255) NOT NULL                 -- Author's name
);


-- Insert sample Authors
INSERT INTO Authors (name) VALUES
('J.K. Rowling'),
('George Orwell'),
('J.R.R. Tolkien'),
('Chinua Achebe'),
('Ngũgĩ wa Thiong\'o'),
('Stephen King'),
('Haruki Murakami'),
('Jane Austen'),
('Mark Twain'),
('Leo Tolstoy'),
('Dan Brown');


-- Create Categories table
CREATE TABLE Categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for each category
    name VARCHAR(255) NOT NULL                  -- Name of the category
);


-- Insert category records
INSERT INTO Categories (name) VALUES
('Fiction'),
('Science Fiction'),
('Fantasy'),
('Classic'),
('Historical'),
('Thriller'),
('Romance'),
('Biography'),
('Drama'),
('Adventure'),
('Philosophy');


-- Create Borrowers table
CREATE TABLE Borrowers (
    borrower_id INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for each borrower
    name VARCHAR(255) NOT NULL,                  -- Borrower's name
    email VARCHAR(255) UNIQUE NOT NULL,          -- Borrower's email (unique)
    phone VARCHAR(15),                           -- Borrower's phone number
    address TEXT                                 -- Borrower's address
);


-- Insert borrowers table
INSERT INTO Borrowers (name, email, phone, address) VALUES
('Samuel Mwangi', 'samuel@example.com', '0700000001', 'Nairobi, Kenya'),
('Linda Otieno', 'linda@example.com', '0700000002', 'Kisumu, Kenya'),
('James Kamau', 'james@example.com', '0700000003', 'Mombasa, Kenya'),
('Patricia Wanjiku', 'patricia@example.com', '0700000004', 'Thika, Kenya'),
('Kevin Ouma', 'kevin@example.com', '0700000005', 'Eldoret, Kenya'),
('Grace Njuguna', 'grace@example.com', '0700000006', 'Nakuru, Kenya'),
('Brian Kiptoo', 'brian@example.com', '0700000007', 'Kericho, Kenya'),
('Caroline Muthoni', 'caroline@example.com', '0700000008', 'Nyeri, Kenya'),
('Elijah Odhiambo', 'elijah@example.com', '0700000009', 'Siaya, Kenya'),
('Diana Njeri', 'diana@example.com', '0700000010', 'Machakos, Kenya'),
('Peter Mutua', 'peter@example.com', '0700000011', 'Kitui, Kenya');



-- Create Staff table
CREATE TABLE Staff (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone VARCHAR(15),
    role VARCHAR(50),         -- e.g., Librarian, Assistant, Admin
    hire_date DATE
);

-- Insert Staff details
INSERT INTO Staff (name, email, phone, role, hire_date) VALUES
('Alice Johnson', 'alice@library.com', '0712345678', 'Librarian', '2022-01-15'),
('Brian Otieno', 'brian@library.com', '0719876543', 'Assistant', '2023-03-10'),
('Catherine Mwangi', 'catherine@library.com', '0723456789', 'Admin', '2021-08-21'),
('David Njoroge', 'david@library.com', '0701122334', 'Librarian', '2024-02-01'),
('Emily Ochieng', 'emily@library.com', '0711223344', 'Assistant', '2022-11-11'),
('Frank Kamau', 'frank@library.com', '0733445566', 'Admin', '2020-07-07'),
('Grace Wambui', 'grace@library.com', '0744556677', 'Librarian', '2023-06-18'),
('Henry Kibet', 'henry@library.com', '0755667788', 'Assistant', '2021-12-25'),
('Isabel Nduta', 'isabel@library.com', '0766778899', 'Librarian', '2022-05-09'),
('James Kariuki', 'james@library.com', '0777888990', 'Admin', '2023-09-30'),
('Kevin Muli', 'kevin@library.com', '0788999001', 'Assistant', '2024-04-04');
