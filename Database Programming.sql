CREATE TABLE Author (
    AuthorID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    AuthorFirstName CHAR(20),
    AuthorLastName CHAR(20),
    AuthorNationality CHAR(20)
);

CREATE TABLE Book (
    BookID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    BookTitle CHAR(30),
    AuthorID INT,
    Genre CHAR(20),
    FOREIGN KEY (AuthorID) REFERENCES Author (AuthorID)
);

CREATE TABLE Client (
    ClientID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    ClientFirstName CHAR(20),
    ClientLastName CHAR(20),
    ClientDOB CHAR(4),
    Occupation CHAR(40)
);

CREATE TABLE Borrower (
    BorrowID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    ClientID INT,
    BookID INT,
    BorrowDate Date,
    CONSTRAINT FK_Client FOREIGN KEY (ClientID) REFERENCES Client(ClientID),
    CONSTRAINT FK_Book FOREIGN KEY (BookID) REFERENCES Book(BookID)
);

INSERT INTO Author() 
VALUES (0, 'Sofia', 'Smith', 'Canada'),
		(0, 'Maria', 'Brown', 'Brazil'),
		(0, 'Elena', 'Martin', 'Mexico'),
		(0, 'Zoe', 'Roy', 'France'),
		(0, 'Sebastian', 'Lavoie', 'Canada'),
		(0, 'Dylan', 'Garcia', 'Spain'),
        (0, 'Ian', 'Cruz' ,'Mexico'),
        (0, 'Lucas', 'Smith', 'USA'),
        (0, 'Fabian', 'Wilson', 'USA'),
        (0, 'Liam', 'Taylor', 'Canada'),
        (0, 'William', 'Thomas', 'Great Britain'),
        (0, 'Logan', 'Moore', 'Canada'),
        (0, 'Oliver', 'Martin', 'France'),
        (0, 'Alysha', 'Thompson', 'Canada'),
        (0, 'Isabelle', 'Lee', 'Canada'),
        (0, 'Emily', 'Clark', 'USA'),
        (0, 'John', 'Young', 'China'),
        (0, 'David', 'Wright', 'Canada'),
        (0, 'Thomas', 'Scott', 'Canada'),
        (0, 'Helena', 'Adams', 'Canada'),
        (0, 'Sofia', 'Carter', 'USA'),
        (0, 'Liam', 'Parker', 'Canada'),
        (0, 'Emily', 'Murphy', 'USA');

INSERT INTO Book(BookID, BookTitle, Genre, AuthorID) 
VALUES (0, 'Build your database system', 'Science', 1),
		(0, 'The red wall', 'Fiction', 2),
		(0, 'The perfect match', 'Fiction', 3),
		(0, 'Digital Logic', 'Science', 4),
		(0, 'How to be a great lawyer', 'Law', 5),
		(0, 'Manage successful negotiations', 'Society', 6),
		(0, 'Pollution today', 'Science', 7),
		(0, 'A gray park', 'Fiction', 2),
		(0, 'How to be rich in one year', 'Humor', 8),
		(0, 'Their bright fate', 'Fiction', 9),
		(0, 'Black lines', 'Fiction', 10),
		(0, 'History of theater', 'Literature', 11),
		(0, 'Electrical transformers', 'Science', 12),
		(0, 'Build your big data system', 'Science', 1),
		(0, 'Right and left', 'Children', 13),
		(0, 'Programming using Python', 'Science', 1),
		(0, 'Computer networks', 'Science', 14),
		(0, 'Performance evaluation', 'Science', 15),
		(0, 'Daily exercise', 'Well being', 16),
		(0, 'The silver uniform', 'Fiction', 17),
		(0, 'Industrial revolution', 'History', 18),
		(0, 'Green nature', 'Well being', 19),
		(0, 'Perfect football', 'Well being', 20),
		(0, 'The chocolate love', 'Humor', 21),
		(0, 'Director and leader', 'Society', 22),
		(0, 'Play football every week', 'Well being', 20),
		(0, 'Maya the bee', 'Children', 13),
		(0, 'Perfect rugby', 'Well being', 20),
		(0, 'The end', 'Fiction', 23),
		(0, 'Computer security', 'Science', 1),
		(0, 'Participate', 'Society', 22),
		(0, 'Positive figures', 'Fiction', 3);
        
INSERT INTO Client
VALUES (0, 'Kaiden', 'Hill', 2006, 'Student'),
		(0, 'Alina', 'Morton', 2010, 'Student'),
		(0, 'Fania', 'Brooks', 1983, 'Food Scientist'),
		(0, 'Courtney', 'Jensen', 2006, 'Student'),
		(0, 'Brittany', 'Hill', 1983, 'Firefighter'),
		(0, 'Max', 'Rogers', 2005, 'Student'),
		(0, 'Margaret', 'McCarthy', 1981, 'School Psychologist'),
		(0, 'Julie', 'McCarthy', 1973, 'Professor'),
		(0, 'Ken', 'McCarthy', 1974, 'Securities Clerk'),
		(0, 'Britany', "O'Quinn", 1984, 'Violinist'),
		(0, 'Conner', 'Gardner', 1998, 'Licensed Massage Therapist'),
		(0, 'Mya', 'Austin', 1960, 'Parquet Floor Layer'),
		(0, 'Thierry', 'Rogers', 2004, 'Student'),
		(0, 'Eloise', 'Rogers', 1984, 'Computer Security Manager'),
		(0, 'Gerard', 'Jackson', 1979, 'Oil Exploration Engineer'),
		(0, 'Randy', 'Day', 1986, 'Aircraft Electrician'),
		(0, 'Jodie', 'Page', 1990, 'Manufacturing Director'),
		(0, 'Coral', 'Rice', 1996, 'Window Washer'),
		(0, 'Ayman', 'Austin', 2002, 'Student'),
		(0, 'Jaxson', 'Austin', 1999, 'Repair Worker'),
		(0, 'Joel', 'Austin', 1973, 'Police Officer'),
		(0, 'Alina', 'Austin', 2010, 'Student'),
		(0, 'Elin', 'Austin', 1962, 'Payroll Clerk'),
		(0, 'Ophelia', 'Wolf', 2004, 'Student'),
		(0, 'Eliot', 'McGuire', 1967, 'Dentist'),
		(0, 'Peter', 'McKinney', 1968, 'Professor'),
		(0, 'Annabella', 'Henry', 1974, 'Nurse'),
		(0, 'Anastasia', 'Baker', 2001, 'Student'),
		(0, 'Tyler', 'Baker', 1984, 'Police Officer'),
		(0, 'Lilian', 'Ross', 1983, 'Insurance Agent'),
		(0, 'Thierry', 'Arnold', 1975, 'Bus Driver'),
		(0, 'Angelina', 'Rowe', 1979, 'Firefighter'),
		(0, 'Marcia', 'Rowe', 1974, 'Health Educator'),
		(0, 'Martin', 'Rowe', 1976, 'Ship Engineer'),
		(0, 'Adeline', 'Rowe', 2005, 'Student'),
        (0, 'Colette', 'Rowe', 1963, 'Professor'),
		(0, 'Diane', 'Clark', 1975, 'Payroll Clerk'),
		(0, 'Caroline', 'Clark', 1960, 'Dentist'),
		(0, 'Dalton', 'Clayton', 1982, 'Police Officer'),
		(0, 'Steve', 'Clayton', 1990, 'Bus Driver'),
		(0, 'Melanie', 'Clayton', 1987, 'Computer Engineer'),
		(0, 'Alana', 'Wilson', 2007, 'Student'),
		(0, 'Carson', 'Byrne', 1995, 'Food Scientist'),
		(0, 'Conrad', 'Byrne', 2007, 'Student'),
		(0, 'Ryan', 'Porter', 2008, 'Student'),
		(0, 'Elin', 'Porter', 1978, 'Computer Programmer'),
		(0, 'Tyler', 'Harvey', 2007, 'Student'),
		(0, 'Arya', 'Harvey', 2008, 'Student'),
		(0, 'Serena', 'Harvey', 1978, 'School Teacher'),
		(0, 'Lilly', 'Franklin', 1976, 'Doctor'),
		(0, 'Mai', 'Franklin', 1994, 'Dentist'),
		(0, 'John', 'Franklin', 1999, 'Firefighter'),
		(0, 'Judy', 'Franklin', 1995, 'Firefighter'),
		(0, 'Katy', 'Lloyd', 1992, 'School Teacher'),
		(0, 'Tamara', 'Allen', 1963, 'Ship Engineer'),
		(0, 'Maxim', 'Lyons', 1985, 'Police Officer'),
		(0, 'Allan', 'Lyons', 1983, 'Computer Engineer'),
		(0, 'Marc', 'Harris', 1980, 'School Teacher'),
		(0, 'Elin', 'Young', 2009, 'Student'),
		(0, 'Diana', 'Young', 2008, 'Student'),
		(0, 'Diane', 'Young', 2006, 'Student'),
		(0, 'Alana', 'Bird', 2003, 'Student'),
		(0, 'Anna', 'Becker', 1979, 'Security Agent'),
		(0, 'Katie', 'Grant', 1977, 'Manager'),
		(0, 'Joan', 'Grant', 2010, 'Student'),
		(0, 'Bryan', 'Bell', 2001, 'Student'),
		(0, 'Belle', 'Miller', 1970, 'Professor'),
		(0, 'Peggy', 'Stevens', 1990, 'Bus Driver'),
		(0, 'Steve', 'Williamson', 1975, 'HR Clerk'),
		(0, 'Tyler', 'Williamson', 1999, 'Doctor'),
		(0, 'Izabelle', 'Williamson', 1990, 'Systems Analyst'),
		(0, 'Annabel', 'Williamson', 1960, 'Cashier'),
        (0, 'Mohamed', 'Waters', 1966, 'Insurance Agent'),
		(0, 'Marion', 'Newman', 1970, 'Computer Programmer'),
		(0, 'Ada', 'Williams', 1986, 'Computer Programmer'),
		(0, 'Sean', 'Scott', 1983, 'Bus Driver'),
		(0, 'Farrah', 'Scott', 1974, 'Ship Engineer'),
		(0, 'Christine', 'Lambert', 1973, 'School Teacher'),
		(0, 'Alysha', 'Lambert', 2007, 'Student'),
		(0, 'Maia', 'Grant', 1984, 'School Teacher');

INSERT INTO Borrower
VALUES (0, 35, 17, '2016-07-20'),
		(0, 1, 3, '2017-04-19'),
		(0, 42, 8, '2016-10-03'),
		(0, 62, 16, '2016-04-05'),
		(0, 53, 13, '2017-01-17'),
		(0, 33, 15, '2015-11-26'),
		(0, 40, 14, '2015-01-21'),
		(0, 64, 2, '2017-09-10'),
		(0, 56, 30, '2017-08-02'),
		(0, 23, 2, '2018-06-28'),
		(0, 46, 19, '2015-11-18'),
		(0, 61, 20, '2015-11-24'),
		(0, 58, 7, '2017-06-17'),
		(0, 46, 16, '2017-02-12'),
		(0, 80, 21, '2018-03-18'),
		(0, 51, 23, '2015-09-01'),
		(0, 49, 18, '2015-07-28'),
		(0, 43, 18, '2015-11-04'),
		(0, 30, 2, '2018-08-10'),
		(0, 48, 24, '2015-05-13'),
		(0, 71, 5, '2016-09-05'),
		(0, 35, 3, '2016-07-03'),
		(0, 57, 1, '2015-03-17'),
		(0, 23, 25, '2017-08-16'),
		(0, 20, 12, '2018-07-24'),
		(0, 25, 7, '2015-01-31'),
		(0, 72, 29, '2016-04-10'),
		(0, 74, 20, '2017-07-31'),
		(0, 53, 14, '2016-02-20'),
		(0, 32, 10, '2017-07-24'),
		(0, 12, 15, '2018-04-25'),
		(0, 77, 13, '2017-06-09'),
		(0, 30, 4, '2017-10-24'),
		(0, 37, 24, '2016-01-14'),
		(0, 27, 26, '2017-06-05'),
		(0, 1, 16, '2018-05-06'),
		(0, 21, 9, '2016-03-19'),
		(0, 69, 28, '2017-03-29'),
		(0, 17, 19, '2017-03-14'),
		(0, 8, 9, '2016-04-22'),
		(0, 63, 18, '2015-01-25'),
		(0, 65, 20, '2016-10-10'),
		(0, 51, 19, '2015-07-28'),
		(0, 23, 12, '2017-01-25'),
		(0, 17, 4, '2017-04-18'),
		(0, 68, 5, '2016-09-06'),
		(0, 46, 13, '2017-09-30'),
		(0, 15, 13, '2017-07-05'),
		(0, 11, 19, '2017-12-14'),
		(0, 78, 15, '2017-01-26'),
		(0, 47, 9, '2015-03-03'),
		(0, 68, 7, '2016-05-26'),
		(0, 37, 26, '2017-02-06'),
		(0, 48, 27, '2015-12-30'),
		(0, 9, 21, '2017-10-21'),
		(0, 29, 8, '2018-04-01'),
		(0, 64, 18, '2017-08-29'),
		(0, 61, 26, '2018-02-21'),
		(0, 39, 28, '2016-07-26'),
		(0, 73, 18, '2018-08-22'),
		(0, 11, 13, '2018-01-17'),
		(0, 45, 6, '2016-07-20'),
		(0, 33, 13, '2018-03-18'),
		(0, 10, 17, '2016-06-06'),
		(0, 28, 18, '2017-02-17'),
		(0, 51, 3, '2016-12-09'),
		(0, 29, 2, '2015-09-18'),
		(0, 28, 30, '2017-09-14'),
		(0, 74, 20, '2015-12-12'),
		(0, 15, 22, '2015-01-14'),
		(0, 57, 8, '2017-08-20'),
		(0, 2, 5, '2015-01-18'),
		(0, 74, 12, '2018-04-14'),
		(0, 51, 10, '2016-02-25'),
		(0, 25, 17, '2015-02-24'),
		(0, 45, 21, '2017-02-10'),
		(0, 27, 25, '2016-08-03'),
		(0, 32, 28, '2016-06-15'),
		(0, 71, 21, '2017-05-21'),
		(0, 75, 26, '2016-05-03'),
		(0, 56, 32, '2015-12-23'),
		(0, 26, 32, '2015-05-16'),
		(0, 66, 32, '2015-05-30'),
		(0, 57, 18, '2017-09-15'),
		(0, 40, 15, '2016-09-02'),
		(0, 65, 4, '2017-08-17'),
		(0, 54, 7, '2015-12-19'),
		(0, 29, 4, '2017-07-22'),
		(0, 44, 9, '2017-12-31'),
		(0, 56, 31, '2015-06-13'),
		(0, 17, 4, '2015-04-01'),
		(0, 35, 16, '2018-07-19'),
		(0, 22, 18, '2017-06-22'),
		(0, 39, 24, '2015-05-29'),
		(0, 63, 14, '2018-01-20'),
		(0, 53, 21, '2016-07-31'),
		(0, 40, 9, '2016-07-10'),
		(0, 52, 4, '2017-04-05'),
		(0, 27, 20, '2016-09-04'),
		(0, 72, 29, '2015-12-06'),
		(0, 49, 16, '2017-12-19'),
		(0, 6, 12, '2016-12-04'),
		(0, 74, 31, '2016-07-27'),
		(0, 48, 32, '2016-06-29'),
		(0, 69, 2, '2016-12-27'),
		(0, 60, 32, '2017-10-29'),
		(0, 45, 22, '2017-06-12'),
		(0, 42, 15, '2017-05-14'),
		(0, 79, 8, '2016-10-13'),
		(0, 70, 18, '2016-12-04'),
		(0, 34, 8, '2016-03-06'),
		(0, 43, 8, '2015-12-19'),
		(0, 42, 32, '2016-04-20'),
		(0, 67, 5, '2017-03-06'),
		(0, 80, 25, '2015-06-23'),
		(0, 54, 11, '2017-05-03'),
		(0, 34, 28, '2017-08-30'),
		(0, 65, 20, '2017-08-26'),
		(0, 61, 19, '2018-01-05'),
		(0, 38, 12, '2018-01-17'),
		(0, 51, 4, '2016-05-13'),
		(0, 7, 16, '2016-03-17'),
		(0, 46, 16, '2016-11-25'),
		(0, 75, 30, '2018-08-12'),
		(0, 72, 32, '2015-03-12'),
		(0, 44, 17, '2015-06-15'),
		(0, 68, 15, '2016-02-21'),
		(0, 21, 1, '2016-06-19'),
		(0, 14, 25, '2016-10-10'),
		(0, 68, 21, '2016-05-27'),
		(0, 35, 20, '2015-03-19'),
		(0, 16, 27, '2016-08-08'),
		(0, 79, 31, '2018-03-07'),
		(0, 14, 17, '2018-04-28'),
		(0, 29, 28, '2018-03-11'),
		(0, 41, 4, '2018-08-08'),
		(0, 42, 3, '2016-02-23'),
		(0, 45, 3, '2017-07-10'),
		(0, 36, 16, '2018-07-19'),
		(0, 36, 30, '2015-08-07'),
		(0, 54, 32, '2018-03-14'),
		(0, 61, 15, '2017-03-28'),
		(0, 1, 13, '2018-05-17'),
		(0, 43, 1, '2015-05-14'),
		(0, 37, 14, '2015-07-30'),
		(0, 62, 17, '2015-09-19'),
		(0, 50, 22, '2016-12-02'),
		(0, 45, 1, '2016-07-24'),
		(0, 32, 17, '2018-03-10'),
		(0, 13, 28, '2016-02-14'),
		(0, 15, 9, '2018-08-11'),
		(0, 10, 19, '2018-08-29'),
		(0, 66, 3, '2016-11-27'),
		(0, 68, 29, '2017-07-12'),
		(0, 21, 14, '2018-06-27'),
		(0, 35, 9, '2016-01-22'),
		(0, 17, 24, '2016-08-25'),
		(0, 40, 21, '2015-07-09'),
		(0, 1, 24, '2016-03-28'),
		(0, 70, 27, '2015-07-10'),
		(0, 80, 26, '2016-04-24'),
		(0, 29, 5, '2015-10-18'),
		(0, 76, 12, '2018-04-25'),
		(0, 22, 4, '2016-12-24'),
		(0, 2, 2, '2017-10-26'),
		(0, 35, 13, '2016-02-28'),
		(0, 40, 8, '2017-10-02'),
		(0, 68, 9, '2016-01-03'),
		(0, 32, 5, '2016-11-13'),
		(0, 34, 17, '2016-09-15'),
		(0, 34, 16, '2018-04-13'),
		(0, 80, 30, '2016-10-13'),
		(0, 20, 32, '2015-11-17'),
		(0, 36, 10, '2017-09-01'),
		(0, 78, 12, '2018-06-27'),
		(0, 57, 8, '2016-03-22'),
		(0, 75, 11, '2017-06-27'),
		(0, 71, 10, '2015-08-01'),
		(0, 48, 22, '2015-09-29'),
		(0, 19, 16, '2016-02-21'),
		(0, 79, 30, '2018-08-20'),
		(0, 70, 13, '2016-09-16'),
		(0, 30, 6, '2017-02-10'),
		(0, 45, 12, '2017-10-12'),
		(0, 30, 27, '2016-11-23'),
		(0, 26, 3, '2016-08-13'),
		(0, 66, 6, '2017-01-14'),
		(0, 47, 15, '2016-02-10'),
		(0, 53, 30, '2018-08-08'),
		(0, 80, 16, '2016-03-31'),
		(0, 70, 13, '2018-02-03'),
		(0, 14, 25, '2016-03-27'),
		(0, 46, 22, '2016-01-13'),
		(0, 30, 32, '2015-08-06'),
		(0, 60, 14, '2016-11-27'),
		(0, 14, 13, '2018-05-23'),
		(0, 71, 15, '2016-06-22'),
		(0, 38, 21, '2015-12-27'),
		(0, 69, 30, '2017-04-29'),
		(0, 49, 31, '2018-06-03'),
		(0, 28, 28, '2015-05-29'),
		(0, 49, 3, '2016-08-30'),
		(0, 75, 1, '2015-10-29'),
		(0, 78, 3, '2017-05-12'),
		(0, 43, 18, '2015-03-25'),
		(0, 27, 21, '2016-02-22'),
		(0, 64, 22, '2015-04-03'),
		(0, 21, 11, '2017-12-09'),
		(0, 66, 29, '2016-12-20'),
		(0, 45, 13, '2017-04-15'),
		(0, 48, 30, '2015-01-31'),
		(0, 20, 25, '2017-12-20'),
		(0, 41, 20, '2018-01-29'),
		(0, 51, 12, '2015-07-05'),
		(0, 5, 1, '2015-04-12'),
		(0, 40, 3, '2018-02-24'),
		(0, 79, 4, '2018-06-27'),
		(0, 15, 10, '2016-11-01'),
		(0, 42, 22, '2016-12-28'),
		(0, 17, 9, '2018-01-29'),
		(0, 38, 13, '2016-05-09'),
		(0, 79, 2, '2017-12-06'),
		(0, 74, 3, '2015-12-07'),
		(0, 46, 8, '2016-06-05'),
		(0, 78, 22, '2018-08-11'),
		(0, 45, 2, '2015-04-20'),
		(0, 72, 31, '2015-11-11'),
		(0, 18, 17, '2015-03-21'),
		(0, 29, 3, '2017-08-13'),
		(0, 66, 11, '2018-06-05'),
		(0, 36, 16, '2016-04-28'),
		(0, 26, 2, '2016-10-23'),
		(0, 32, 1, '2017-10-31'),
		(0, 62, 14, '2017-07-25'),
		(0, 12, 4, '2015-07-08'),
		(0, 38, 32, '2015-02-24'),
		(0, 29, 16, '2016-07-28'),
		(0, 36, 25, '2017-05-07'),
		(0, 76, 7, '2015-06-13'),
		(0, 28, 16, '2016-08-15'),
		(0, 60, 13, '2016-08-26'),
		(0, 8, 3, '2017-07-28'),
		(0, 25, 1, '2016-07-30'),
		(0, 62, 29, '2018-08-24'),
		(0, 51, 8, '2016-09-01'),
		(0, 27, 23, '2015-02-08'),
		(0, 69, 12, '2018-06-25'),
		(0, 51, 12, '2015-07-04'),
		(0, 7, 4, '2015-05-01'),
		(0, 31, 15, '2017-10-29'),
		(0, 14, 23, '2015-01-15'),
		(0, 14, 1, '2018-05-21'),
		(0, 39, 25, '2015-12-26'),
		(0, 79, 24, '2016-05-31'),
		(0, 40, 15, '2016-03-18'),
		(0, 51, 13, '2018-04-13'),
		(0, 61, 1, '2015-02-11'),
		(0, 15, 24, '2018-03-02'),
		(0, 10, 22, '2018-01-21'),
		(0, 67, 10, '2017-07-08'),
		(0, 79, 11, '2016-12-11'),
		(0, 19, 32, '2016-05-04'),
		(0, 35, 11, '2017-08-01'),
		(0, 27, 13, '2017-12-15'),
		(0, 30, 22, '2015-12-22'),
		(0, 8, 7, '2015-06-26'),
		(0, 70, 9, '2016-03-20'),
		(0, 56, 18, '2016-01-29'),
		(0, 13, 19, '2015-03-06'),
		(0, 61, 2, '2016-06-18'),
		(0, 47, 13, '2017-09-18'),
		(0, 30, 22, '2016-02-19'),
		(0, 18, 22, '2016-12-31'),
		(0, 34, 29, '2017-10-27'),
		(0, 32, 21, '2015-06-03'),
		(0, 9, 28, '2016-03-30'),
		(0, 62, 24, '2015-03-23'),
		(0, 44, 22, '2017-04-29'),
		(0, 27, 5, '2015-03-25'),
		(0, 61, 28, '2017-07-14'),
		(0, 5, 13, '2016-12-04'),
		(0, 43, 19, '2018-03-15'),
		(0, 34, 19, '2016-06-05'),
		(0, 35, 5, '2018-02-19'),
		(0, 13, 12, '2016-09-23'),
		(0, 74, 18, '2016-12-26'),
		(0, 70, 31, '2017-08-15'),
		(0, 42, 17, '2016-06-15'),
		(0, 51, 24, '2018-07-30'),
		(0, 45, 30, '2015-01-15'),
		(0, 70, 17, '2017-10-07'),
		(0, 77, 7, '2017-01-06'),
		(0, 74, 25, '2015-09-25'),
		(0, 47, 14, '2018-02-01'),
		(0, 10, 2, '2017-04-18'),
		(0, 16, 21, '2016-10-03'),
		(0, 48, 5, '2016-09-17'),
		(0, 72, 3, '2017-02-10'),
		(0, 26, 23, '2016-03-01'),
		(0, 49, 23, '2016-10-25');
        
-- Displaying all contents from the Client table.
SELECT * 
FROM Client;

-- Show only the clients names, ages and occupations
SELECT ClientFirstName, ClientLastName,Year(CURDATE())-ClientDOB AS Age, Occupation
FROM Client;

-- Retrieve names of clients that borrowed books in March 2018
SELECT ClientFirstName, ClientLastName
FROM Client AS c, Borrower AS b
Where c.ClientID = b.ClientID 
AND MONTH(b.BorrowDate) = 03
AND YEAR(b.BorrowDate) = 2018;

-- Get names of the top 5 authors borrowed in 2017
SELECT AuthorFirstName, AuthorLastName
FROM Author AS a, Book AS b1, Borrower AS b2
WHERE a.AuthorID = b1.AuthorID AND b1.BookID = b2.BookID
AND YEAR(b2.BorrowDate) = 2017
GROUP BY a.AuthorID
ORDER BY Count(*) DESC
LIMIT 5;

-- Show the Nationalities of the least 5 authors that clients borrowed from 2015-2017
SELECT AuthorNationality
FROM Author AS a, Book AS b1, Borrower AS b2
WHERE a.AuthorID = b1.AuthorID AND b1.BookID = b2.BookID
AND YEAR(b2.BorrowDate) BETWEEN 2015 AND 2017
GROUP BY a.AuthorID
ORDER BY Count(*)
LIMIT 5;

-- Retrieve the book most borrowed between 2015-2017
SELECT BookTitle
FROM Book AS b1, Borrower AS b2
WHERE b1.BookID = b2.BookID
AND YEAR(b2.BorrowDate) BETWEEN 2015 AND 2017
GROUP BY b1.BookTitle
ORDER BY Count(*) DESC
LIMIT 1;

-- Show the top borrowed genres for clients born from 1970-1980
SELECT Genre
FROM Book AS b1
JOIN Borrower AS b2
ON b1.BookID = b2.BookID
JOIN Client AS c
ON c.ClientID = b2.ClientID
WHERE ClientDOB BETWEEN 1970 and 1980
GROUP BY Genre
ORDER BY Count(*) DESC;

-- Pull the top 5 occupations that borrowed the most in year 2016
SELECT Occupation
FROM Client AS c
JOIN Borrower AS b
ON b.ClientID = c.ClientID
WHERE YEAR(b.BorrowDate) = 2016
GROUP BY Occupation
ORDER BY Count(*) DESC
LIMIT 5;

-- Compute Avg of books borrowed by occupation
SELECT AVG(ttl_books) AS Average, d.Occupation
FROM( SELECT Occupation, Count(*) AS ttl_books
	FROM Book AS b1
	JOIN Borrower AS b2
	ON b1.BookID = b2.BookID
	JOIN Client AS c
	ON c.ClientID = b2.ClientID
	GROUP BY c.Occupation, b2.ClientID
    )AS d
GROUP BY Occupation;
    
-- Creating a View to dislay book titles borrowed by 20% or more of clients
CREATE VIEW best_sellers AS
SELECT BookTitle, Count(*)
FROM Book AS b1
JOIN Borrower AS b2
ON b1.BookID = b2. BookID
GROUP BY BookTitle
HAVING Count(*) > (SELECT Count(*)*.20 FROM Client);

Select * 
FROM best_sellers;

-- Display top month of borrows in 2017
SELECT MONTHNAME(BorrowDate) AS Month
FROM borrower
WHERE YEAR(BorrowDate) = 2017
GROUP BY Month
ORDER BY Count(*) DESC
LIMIT 1;

-- Average borrows by age
SELECT Round(AVG(ttl_books_age)) AS avg_books_borrowed, AGE
FROM (SELECT Year(CURDATE())-c.ClientDOB AS AGE, Count(*) AS ttl_books_age
	FROM borrower AS b
	JOIN client AS c
	ON b.ClientID = c.ClientID
	GROUP BY c.ClientDOB
    ) AS d
    GROUP BY Age;

/* Select oldest and youngest clients of the library. Has two subqqueries which pull
the top 5 oldest and top 5 youngest clients then combines these with a union.*/
SELECT *
FROM (SELECT ClientFirstName, ClientLastName, Year(CURDATE())-ClientDOB AS Age
	From Client
	ORDER BY ClientDOB 
	LIMIT 5
) AS c
UNION
SELECT *
FROM (SELECT ClientFirstName, ClientLastName, Year(CURDATE())-ClientDOB AS Age
	From Client
	ORDER BY ClientDOB DESC
	LIMIT 5
)AS D
ORDER BY Age DESC;
    
    
-- Displays the names of the authors who wrote books in more than one genre.
SELECT c.AuthorFirstName, c.AuthorLastName
FROM (SELECT a.AuthorID, a.AuthorFirstName, a.AuthorLastName, Genre, Count(*)
	FROM Author AS a
	JOIN Book AS b
	ON a.AuthorID = b.AuthorID
	GROUP BY b.Genre, a.AuthorID
	ORDER BY a.AuthorID
    )as c
    GROUP BY c.AuthorID
    HAVING COUNT(*) >1;
    
    
Select * 
FROM best_sellers;


CREATE INDEX inx_borrow 
ON Borrower (ClientID); 

SELECT *
FROM inx_borrow