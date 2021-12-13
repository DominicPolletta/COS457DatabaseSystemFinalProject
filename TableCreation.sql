CREATE TABLE Reader(
    User_ID NUMERIC(5),
    First_Name VARCHAR2(50) NOT NULL,
    Last_Name VARCHAR2(50) NOT NULL,
    PRIMARY KEY(User_ID)
);

CREATE TABLE Reader_Emails(
    User_ID NUMERIC(5),
    Email_Address VARCHAR2(50) NOT NULL,
    PRIMARY KEY(User_ID),
    FOREIGN KEY(User_ID)
    REFERENCES Reader_Emails(User_ID)
);

CREATE TABLE Reader_Phone_Numbers(
    User_ID NUMERIC(5),
    Phone_Number VARCHAR2(50) NOT NULL,
    PRIMARY KEY(User_ID),
    FOREIGN KEY(User_ID)
    REFERENCES Reader(User_ID)
);

CREATE TABLE Reader_Addresses(
    User_ID NUMERIC(5),
    Street VARCHAR2(50) NOT NULL,
    House_Number VARCHAR2(50) NOT NULL,
    US_State VARCHAR2(50) NOT NULL,   
    Zip_code VARCHAR2(50) NOT NULL,
    PRIMARY KEY(User_ID)
);

CREATE TABLE Book(
    Book_ID NUMERIC(7),
    ISBN_Number NUMERIC(5) NOT NULL,
    Author_ID NUMERIC(5) NOT NULL,
    Title VARCHAR2(50) NOT NULL, 
    Edition_Number NUMERIC(1) NOT NULL,
    Genre NUMERIC(5) NOT NULL,
    Publication_Year NUMERIC(4) NOT NULL,
    Publishing_City_ID NUMERIC(5) NOT NULL,
    Publisher_ID NUMERIC(5) NOT NULL,
    FOREIGN KEY(Publishing_City_ID)
    REFERENCES Publication_Cities(Publishing_City_ID),
    FOREIGN KEY(Author_ID)
    REFERENCES Author(Author_ID),
    FOREIGN KEY(Publisher_ID)
    REFERENCES Publishers(Publisher_ID),
    PRIMARY KEY(Book_ID)
);

CREATE TABLE Books_Out_On_Loan(
    User_ID NUMERIC(5),
    Book_ID NUMERIC(7),
    Return_Date DATE NOT NULL,
    FOREIGN KEY(User_ID)
    REFERENCES Reader(User_ID),
    FOREIGN KEY(Book_ID)
    REFERENCES Book(Book_ID),
    CONSTRAINT Books_Out_On_Loan_pk
    PRIMARY KEY(User_ID, Book_ID)
);

CREATE TABLE Publication_Cities(
    Publishing_City_ID NUMERIC(5) NOT NULL,
    Publishing_City VARCHAR2(50) NOT NULL,
    PRIMARY KEY(Publishing_City_ID)
);

CREATE TABLE Publishers(
    Publisher_ID NUMERIC(5) NOT NULL,
    Publisher_Name VARCHAR2(50) NOT NULL,
    PRIMARY KEY(Publisher_ID)
);

CREATE TABLE Author(
    Author_ID NUMERIC(5),
    Author_First VARCHAR2(50) NOT NULL,
    Author_Last VARCHAR2(50) NOT NULL,
    Author_DOB DATE NOT NULL,
    Author_DOD DATE,
    PRIMARY KEY(Author_ID)
);
