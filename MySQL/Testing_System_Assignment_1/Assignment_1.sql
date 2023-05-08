DROP DATABASE IF EXISTS ManageExam;
CREATE DATABASE ManageExam;
USE ManageExam;

CREATE TABLE Department(
	Department_ID INT auto_increment,
    Department_Name VARCHAR(100)
);

CREATE TABLE `Position`(
	Positions_ID INT auto_increment,
    Positions_Name VARCHAR(100)
);

CREATE TABLE `Account`(
	Accounts_ID INT auto_increment,
    Email VARCHAR(100),
    Username VARCHAR(100),
    Fullname VARCHAR(100),
    Department_ID INT,
    Create_Date DATE
);

CREATE TABLE `Group`(
	Group_ID INT auto_increment,
    Group_Name VARCHAR(100),
    Creator_ID INT,
    Create_Date DATE
);

CREATE TABLE GroupAccount(
	Group_ID INT,
    Account_ID INT,
    Join_Date DATE
);

CREATE TABLE TypeQuestion(
	Type_ID INT auto_increment,
    Type_Name VARCHAR(100)
);

CREATE TABLE CategoryQuestion(
	Category_ID INT auto_increment,
    Category_Name VARCHAR(100)
);

CREATE TABLE Question(
	Question_ID INT auto_increment,
    Content NVARCHAR(100),
    Category_ID INT,
    Type_ID INT,
    Creator_ID INT,
    Create_Date DATE
);

CREATE TABLE Answer(
	Answer_ID INT auto_increment,
    Content NVARCHAR(100),
    Question_ID INT,
    Is_Correct
);