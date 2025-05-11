CREATE DATABASE IF NOT EXISTS academic_records;
USE academic_records;

CREATE TABLE Professor (
    SSN CHAR(9) PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    TelephoneNumber VARCHAR(15),
    Sex CHAR(1),
    Title VARCHAR(100),
    Salary DECIMAL(10,2),
    CollegeDegrees VARCHAR(255),
    StreetAddress VARCHAR(200),
    City VARCHAR(100),
    State CHAR(2),
    ZipCode VARCHAR(10)
);

CREATE TABLE Department (
    DepartmentID INT AUTO_INCREMENT PRIMARY KEY,
    DeptName VARCHAR(100) NOT NULL,
    Telephone VARCHAR(15),
    Location VARCHAR(200),
    ChairmanSSN CHAR(9),
    FOREIGN KEY (ChairmanSSN) REFERENCES Professor(SSN)
);

CREATE TABLE Course (
    CourseNumber VARCHAR(10) PRIMARY KEY,
    Title VARCHAR(200),
    Textbook VARCHAR(200),
    Units INT,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

CREATE TABLE Prerequisite (
    CourseNumber VARCHAR(10),
    PrereqCourseNumber VARCHAR(10),
    PRIMARY KEY (CourseNumber, PrereqCourseNumber),
    FOREIGN KEY (CourseNumber) REFERENCES Course(CourseNumber),
    FOREIGN KEY (PrereqCourseNumber) REFERENCES Course(CourseNumber)
);

CREATE TABLE Section (
    SectionID INT AUTO_INCREMENT PRIMARY KEY,
    CourseNumber VARCHAR(10),
    SectionNumber INT,
    Classroom VARCHAR(50),
    Seats INT,
    MeetingDays VARCHAR(50),
    StartTime TIME,
    EndTime TIME,
    ProfessorSSN CHAR(9),
    UNIQUE (CourseNumber, SectionNumber),
    FOREIGN KEY (CourseNumber) REFERENCES Course(CourseNumber),
    FOREIGN KEY (ProfessorSSN) REFERENCES Professor(SSN)
);

CREATE TABLE Student (
    StudentID VARCHAR(20) PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    StreetAddress VARCHAR(200),
    City VARCHAR(100),
    State CHAR(2),
    ZipCode VARCHAR(10),
    TelephoneNumber VARCHAR(15),
    MajorDepartmentID INT,
    FOREIGN KEY (MajorDepartmentID) REFERENCES Department(DepartmentID)
);

CREATE TABLE Minor (
    StudentID VARCHAR(20),
    DepartmentID INT,
    PRIMARY KEY (StudentID, DepartmentID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

CREATE TABLE Enrollment (
    StudentID VARCHAR(20),
    SectionID INT,
    Grade VARCHAR(2),
    PRIMARY KEY (StudentID, SectionID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (SectionID) REFERENCES Section(SectionID)
);
