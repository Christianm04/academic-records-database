USE academic_records;

INSERT INTO Professor (SSN, FirstName, LastName, TelephoneNumber, Sex, Title, Salary, CollegeDegrees, StreetAddress, City, State, ZipCode)
VALUES
  ('111111111','Beeble','Zaphadil','657-278-2011','M','Associate Professor',95000.00,'PhD in Cybersecurity','742 Elm St','Riverside','CA','90210'),
  ('222222222','Nebble','Slipper','657-278-3012','F','Professor',92000.00,'PhD in Mathematics','159 Maple Rd','Hillside','CA','90211'),
  ('333333333','Robin','Nico','657-278-4013','F','Assistant Professor',88000.00,'MS in Data Science','321 Oak Ln','Lakeside','CA','90212');

INSERT INTO Department (DeptName, Telephone, Location, ChairmanSSN)
VALUES
  ('Computer Science','657-278-2000','Building A','111111111'),
  ('Mathematics','657-278-2001','Building B','222222222');

INSERT INTO Course (CourseNumber, Title, Textbook, Units, DepartmentID)
VALUES
  ('CS101','Intro to Computer Science','Computer Science: An Overview',4,1),
  ('CS102','Data Structures & Algorithms','Data Structures and Algorithms',4,1),
  ('CS201','Operating Systems','Modern Operating Systems',3,1),
  ('MATH201','Calculus I','Calculus: Early Transcendentals',4,2);

INSERT INTO Prerequisite (CourseNumber, PrereqCourseNumber)
VALUES
  ('CS102','CS101'),
  ('CS201','CS102');

INSERT INTO Section (CourseNumber, SectionNumber, Classroom, Seats, MeetingDays, StartTime, EndTime, ProfessorSSN)
VALUES
  ('CS101',1,'Room A1',30,'MWF','09:00:00','09:50:00','111111111'),
  ('CS101',2,'Room A2',25,'TTh','10:00:00','11:15:00','111111111'),
  ('CS102',1,'Room C1',30,'MWF','11:00:00','11:50:00','333333333'),
  ('CS201',1,'Room C2',20,'TTh','13:00:00','14:15:00','333333333'),
  ('MATH201',1,'Room B1',35,'MWF','08:00:00','08:50:00','222222222'),
  ('MATH201',2,'Room B2',40,'TTh','14:00:00','15:15:00','222222222');

INSERT INTO Student (StudentID, FirstName, LastName, StreetAddress, City, State, ZipCode, TelephoneNumber, MajorDepartmentID)
VALUES
  ('S001','Drax','Parker','500 Random St','Riverside','CA','90210','657-278-0001',1),
  ('S002','Echo','Eye','800 Mystery Blvd','Hillside','CA','90211','657-278-0002',1),
  ('S003','Pika','Chu','1200 Unknown Rd','Lakeside','CA','90212','657-278-0003',2),
  ('S004','Kim','Night','3000 Faraway Ln','Riverside','CA','90210','657-278-0004',2),
  ('S005','Morpheus','Treeroot','4200 Wandering Ave','Hillside','CA','90211','657-278-0005',1),
  ('S006','Ivy','Green','7800 Nowhere Dr','Lakeside','CA','90212','657-278-0006',2),
  ('S007','Jack','Danella','9100 Driftwood Ct','Riverside','CA','90210','657-278-0007',1),
  ('S008','Elon','Musk','1234 Seastone Pl','Hillside','CA','90211','657-278-0008',1);

INSERT INTO Minor (StudentID, DepartmentID)
VALUES
  ('S001',2),
  ('S002',2),
  ('S004',1),
  ('S006',1);

INSERT INTO Enrollment (StudentID, SectionID, Grade)
VALUES
  ('S001',1,'A'),
  ('S001',3,'B+'),
  ('S001',5,'A-'),
  ('S002',1,'B'),
  ('S002',2,'A'),
  ('S002',3,'A-'),
  ('S003',5,'B+'),
  ('S003',6,'B'),
  ('S003',1,'C'),
  ('S004',5,'A'),
  ('S004',6,'A-'),
  ('S004',4,'B+'),
  ('S005',1,'B-'),
  ('S005',3,'C+'),
  ('S005',4,'B'),
  ('S006',2,'A'),
  ('S006',5,'B+'),
  ('S007',1,'C'),
  ('S007',3,'B-'),
  ('S008',6,'A');
