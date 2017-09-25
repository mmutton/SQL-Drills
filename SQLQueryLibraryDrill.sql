USE [Library Drill]
CREATE TABLE books (
	book_id INT IDENTITY (500,1) PRIMARY KEY NOT NULL,
	book_title VARCHAR(200),
	publisher_name VARCHAR(200) 
	);

CREATE TABLE authors (
	author_id INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
	book_id INT  NOT NULL,
	author_name VARCHAR(70)
	);

CREATE TABLE publishers (
	publisher_name VARCHAR(100) PRIMARY KEY NOT NULL, 
	publisher_address VARCHAR(200),
	publisher_phone VARCHAR(50)
	);
	
CREATE TABLE loans (
	loan_id INT IDENTITY (1000,1) PRIMARY KEY NOT NULL,
	borrower_id INT,
	branch_id VARCHAR (70),
	book_id VARCHAR(70),
	date_out DATE,
	due_date DATE 
	);
	
CREATE TABLE book_copies (
	copies_id INT IDENTITY (1000,1) PRIMARY KEY NOT NULL,
	book_id INT NOT NULL,
	branch_id VARCHAR(70), 
	quantity INT
	);
	
CREATE TABLE borrowers (
	borrower_id INT NOT NULL IDENTITY(2300,1) PRIMARY KEY,
	borrower_lastName VARCHAR(50),
	borrower_firstName VARCHAR(70),
	borrower_address VARCHAR(200),
	borrower_phone VARCHAR(30)
	);

--Time for data inserts for the tables

INSERT INTO books
	(book_title,publisher_name)
	VALUES
	('David Copperfield','Penguin Classics'),
	('Oliver Twist','Penguin Classics'),
	('Emma','Modern Library'),
	('Hamlet','Dover'),
	('Pride and Prejudice','Modern Library'),
	('Sun Also Rises','Scribner'),
	('Macbeth','Dover'),
	('Farewell to Arms','Scribner'),
	('Moby Dick','Pocket Books'),
	('End of Watch','Simon and Schuster'),
	('It','Simon and Schuster'),
	('Twelve Years a Slave','Penguin Classics'),
	('Anna Karenina','Penguin Classics'),
	('The Grapes of Wrath','Penguin Classics'),
	('Antony and Cleopatra','Penguin Classics'),
	('East of Eden','Penguin Classics'),
	('The Crucible','Penguin Classics'),
	('Wild Things','Simon and Schuster'),
	('iGen','Simon and Schuster'),
	('Open','Knopf'),
	('The Tender Bar','Knopf'),
	('The Lost Tribe','Picador')
	;

INSERT INTO authors 
	(book_id,author_name)
	VALUES
	(505, 'Hemmingway'),
	(507, 'Hemmingway'),
	(503, 'Shakespeare'),
	(506, 'Shakespeare'),
	(514, 'Shakespeare'),
	(508, 'Melville'),
	(509, 'King'),
	(510, 'King'),
	(511, 'Northup'),
	(512, 'Tolstoy'),
	(513, 'Steinbeck'),
	(515, 'Steinbeck'),
	(516, 'Miller'),
	(517, 'Handy'),
	(518, 'Twenge'),
	(519, 'Agassi'),
	(520, 'Moehringer'),
	(521, 'Lee'),
	(502, 'Austen'),
	(504, 'Austen'),
	(500, 'Dickens'),
	(501, 'Dickens')
	;

INSERT INTO publishers 
	(publisher_name, publisher_address, publisher_phone)
	VALUES
	('Penguin Classics','Westminster London, England','44 20 7946 0547'),
	('Modern Library','New York, NY','212-555-1212'),
	('Dover','Mineola, NY','212-555-1213'),
	('Scribner','New York City, NY','212-555-1214'),
	('Pocket Books','Chicago, IL','217-555-1215'),
	('Simon and Schuster','New York City, NY','212-555-1216'),
	('Knopf','New York City, NY','212-555-1217'),
	('Picador USA','New York, NY','212-555-1218')
	;

INSERT INTO library_branch
	(branch_name, branch_address)
	VALUES
	('Sharpstown','50 Needle Ave, Dayton, OH'),
	('Central','35 Beaver St, Dayton, OH'),
	('Northeast','10 NE Poodle St, Dayton, OH'),
	('Southwest','20 SW Tabby St, SW Dayton, OH')
	;
	SELECT * FROM library_branch;

INSERT INTO borrowers	
	(borrower_lastName, borrower_firstName, borrower_address, borrower_phone)
	VALUES
	('Adams','Bob','12 Elm St, Dayton 95404','937-555-1234'),
	('Brady','Tom','22 Pie Ave, Dayton 95404','937-555-2345'),
	('Smith','Tanya','100 Bridge St, Dayton 95404','937-555-4567'),
	('Garcia','Ed','33 Jobs St, Dayton 95404','937-555-6789'),
	('White','Betty','188 Bridge St, Dayton 95404','937-555-9876'),
	('Wilson','Janet','333 4th Ave, Dayton 95404','937-555-8765'),
	('Yoshima','Eve','34 River Pkwy, Dayton 95404','937-555-7777'),
	('Foo','Moo','101 J St, Bridgeport 95807','937-555-8877'),
	('Volume','Max','88 Elm St, Dayton 95404','937-555-5555'),
	('Cottontail','Peter','1 Hole Way, Dayton 95404','937-555-9090')
	;
	SELECT * FROM library_branch;

INSERT INTO book_copies 
	(book_id, branch_id, quantity)
	VALUES
	(500,'5','4'),
	(500,'10','6'),
	(500,'15','5'),
	(500,'20','5'),
	(501,'5','3'),
	(501,'10','4'),
	(501,'15','3'),
	(501,'20','4'),
	(502,'5','3'),
	(502,'10','4'),
	(502,'15','4'),
	(502,'20','5'),
	(503,'5','8'),
	(503,'10','5'),
	(503,'15','4'),
	(503,'20','3'),
	(504,'5','3'),
	(504,'10','5'),
	(504,'15','5'),
	(504,'20','5'),
	(505,'5','5'),
	(505,'10','3'),
	(505,'15','3'),
	(505,'20','3'),
	(506,'5','5'),
	(506,'10','5'),
	(506,'15','3'),
	(506,'20','4'),
	(507,'5','3'),
	(507,'10','4'),
	(507,'15','3'),
	(507,'20','3'),
	(508,'5','6'),
	(508,'10','4'),
	(508,'15','4'),
	(508,'20','5'),
	(509,'5','3'),
	(509,'10','3'),
	(509,'15','3'),
	(509,'20','3'),
	(510,'5','3'),
	(510,'10','3'),
	(510,'15','3'),
	(510,'20','3'),
	(511,'5','3'),
	(511,'10','3'),
	(511,'15','3'),
	(511,'20','3'),
	(512,'5','3'),
	(512,'10','3'),
	(512,'15','3'),
	(512,'20','3'),
	(513,'5','3'),
	(513,'10','3'),
	(513,'15','3'),
	(513,'20','4'),
	(514,'5','3'),
	(514,'10','5'),
	(514,'15','3'),
	(514,'20','2'),
	(515,'5','2'),
	(515,'10','3'),
	(515,'15','3'),
	(515,'20','3'),
	(516,'5','3'),
	(516,'10','3'),
	(516,'15','3'),
	(516,'20','3'),
	(517,'5','3'),
	(517,'10','4'),
	(517,'15','4'),
	(517,'20','4'),
	(518,'5','3'),
	(518,'10','3'),
	(518,'15','3'),
	(518,'20','3'),
	(519,'5','3'),
	(519,'10','3'),
	(519,'15','3'),
	(519,'20','3'),
	(520,'5','3'),
	(520,'10','3'),
	(520,'15','3'),
	(520,'20','3'),
	(521,'5','4'),
	(521,'10','4'),
	(521,'15','4'),
	(521,'20','5')
	;
SELECT * FROM loans;
INSERT INTO loans
	(book_id, branch_id, borrower_id, date_out,due_date)
	VALUES
	('500','5','2300','2017-09-01','2017-10-01'),
	('500','5','2302','2017-09-01','2017-10-01'),
	('501','10','2308','2017-09-01','2017-10-01'),
	('501','15','2304','2017-09-01','2017-10-01'),
	('501','20','2303','2017-09-01','2017-10-01'),
	('502','5','2300','2017-09-20','2017-10-20'),
	('502','15','2302','2017-09-20','2017-10-20'),
	('502','15','2304','2017-09-20','2017-10-20'),
	('502','20','2300','2017-09-20','2017-10-20'),
	('503','20','2300','2017-09-20','2017-10-20'),
	('503','20','2303','2017-09-01','2017-10-01'),
	('504','5','2300','2017-09-01','2017-10-01'),
	('504','15','2308','2017-09-01','2017-10-01'),
	('505','5','2300','2017-09-01','2017-10-01'),
	('505','5','2308','2017-09-01','2017-10-01'),
	('505','10','2306','2017-09-01','2017-10-01'),
	('505','15','2304','2017-09-20','2017-10-20'),
	('506','5','2300','2017-09-20','2017-10-20'),
	('506','10','2306','2017-09-20','2017-10-20'),
	('506','15','2304','2017-09-20','2017-10-20'),
	('506','20','2303','2017-09-20','2017-10-20'),
	('506','20','2305','2017-09-20','2017-10-20'),
	('507','5','2309','2017-09-20','2017-10-20'),
	('507','5','2300','2017-09-20','2017-10-20'),
	('507','10','2306','2017-09-01','2017-10-01'),
	('507','15','2304','2017-09-01','2017-10-01'),
	('507','20','2303','2017-09-01','2017-10-01'),
	('508','5','2307','2017-09-01','2017-10-01'),
	('508','5','2309','2017-09-01','2017-10-01'),
	('508','10','2306','2017-09-01','2017-10-01'),
	('508','10','2300','2017-09-01','2017-10-01'),
	('509','5','2307','2017-09-01','2017-10-01'),
	('509','10','2308','2017-09-01','2017-10-01'),
	('509','15','2304','2017-09-01','2017-10-01'),
	('509','20','2306','2017-09-01','2017-10-01'),
	('510','5','2302','2017-09-25','2017-10-25'),
	('510','10','2300','2017-09-25','2017-10-25'),
	('510','10','2306','2017-09-15','2017-10-25'),
	('510','15','2304','2017-09-15','2017-10-25'),
	('510','15','2309','2017-09-15','2017-10-25'),
	('511','10','2308','2017-09-15','2017-10-01'),
	('511','15','2304','2017-09-15','2017-10-01'),
	('511','15','2309','2017-09-15','2017-10-01'),
	('511','20','2306','2017-09-15','2017-10-01'),
	('512','5','2307','2017-09-15','2017-10-01'),
	('512','10','2308','2017-09-15','2017-10-25'),
	('512','15','2309','2017-09-23','2017-10-25'),
	('512','20','2303','2017-09-23','2017-10-25'),
	('514','5','2303','2017-09-23','2017-10-25'),
	('514','10','2308','2017-09-25','2017-10-25'),
	('514','15','2309','2017-09-01','2017-10-01'),
	('515','5','2307','2017-09-01','2017-10-01'),
	('518','5','2307','2017-09-01','2017-10-01'),
	('519','15','2309','2017-09-01','2017-10-01'),
	('520','5','2307','2017-09-01','2017-10-01'),
	('520','10','2306','2017-09-25','2017-10-25'),
	('520','10','2308','2017-09-25','2017-10-25'),
	('521','5','2307','2017-09-25','2017-10-25'),
	('521','10','2308','2017-09-25','2017-10-25'),
	('521','15','2309','2017-09-25','2017-10-25')
;

	--How many copies of "the Lost Tribe" in the Sharpstown Library branch--

CREATE PROCEDURE libraryDrill @bookTitle varchar(200), @branchName varchar(200) OUTPUT
AS
SELECT c.quantity, l.branch_name, b.book_title 
	FROM book_copies c
	INNER JOIN books b ON b.book_id = c.book_id
	INNER JOIN library_branch l ON c.branch_id = l.branch_id
	WHERE book_title = @bookTitle AND branch_name = @branchName;

	EXEC libraryDrill @bookTitle='Emma', @branchName='Sharpstown'
	--How many copies of "The lost Tribe" in each library--
SELECT c.branch_id, l.branch_name, c.quantity, b.book_title
	FROM book_copies c
	INNER JOIN books b ON b.book_id = c.book_id
	INNER JOIN library_branch l ON c.branch_id = l.branch_id
	    WHERE book_title = 'The Lost Tribe'; 

	--Retrieve the names of borrowers who do not have books checked out--

SELECT b.borrower_lastName, l.due_date, b.borrower_id
	FROM borrowers b
	LEFT JOIN loans l ON l.borrower_id = b.borrower_id
	WHERE  due_date IS Null
	---WHERE l.borrower_id IS NULL
	--For each book loaned from Sharpstown whose duedate is today...retrieve book title, borrower's name, borrower's address--
	
SELECT b.book_title, b1.borrower_lastName, b1.borrower_address, l.due_date
	FROM books b 
	INNER JOIN loans l ON l.book_id = b.book_id
	INNER JOIN borrowers b1 ON l.borrower_id = b1.borrower_id 
	INNER JOIN library_branch lb ON lb.branch_id = l.branch_id
	WHERE lb.branch_name = 'Sharpstown' AND l.due_date = '2017-10-01';

	--retrieve the branch name an total number of books loaned out from each branch.--

SELECT l.branch_name, COUNT(*) as 'loans'
	FROM book_copies b, library_branch l
	WHERE b.branch_id = l.branch_id
	GROUP BY l.branch_name

	-- retrieve the names, addresses and number of books checked out for all borrowers who have more than five books checked out.--

SELECT b.borrower_id, b.borrower_lastName, b.borrower_address, COUNT(*) as NoCopies
	FROM borrowers b
	INNER JOIN loans l ON b.borrower_id = l.borrower_id
	 GROUP BY b.borrower_lastName, b.borrower_address, b.borrower_id HAVING COUNT(*)>5 

	--retrieve the title and number of Stephen King novel copies owned by the library branch "Central"
    --create stored procedure--

CREATE PROCEDURE 

SELECT b.book_title, bc.quantity, a.author_name, lb.branch_name
	FROM books b 
	INNER JOIN authors a on b.book_id = a.book_id 
	INNER JOIN book_copies bc on bc.book_id = a.book_id
	INNER JOIN library_branch lb ON lb.branch_id = bc.branch_id
	WHERE author_name = 'King' AND branch_name = 'Central';
	  


