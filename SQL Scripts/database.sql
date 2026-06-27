USE StudentDB;
GO
CREATE TABLE Students(
 StudentID INT PRIMARY KEY,
 StudentName VARCHAR(100),
 Gender VARCHAR(10),
 Department VARCHAR(50)
);
CREATE TABLE Courses(
 CourseID INT PRIMARY KEY,
 CourseName VARCHAR(100),
 Credits INT
);
CREATE TABLE Enrollments(
 EnrollmentID INT PRIMARY KEY,
 StudentID INT,
 CourseID INT,
 Marks INT,
 Semester VARCHAR(20),
 FOREIGN KEY(StudentID) REFERENCES Students(StudentID),
 FOREIGN KEY(CourseID) REFERENCES Courses(CourseID)
);
INSERT INTO Students VALUES
(1,'John','Male','IT'),
(2,'Mary','Female','Business'),
(3,'David','Male','IT'),
(4,'Sarah','Female','Accounting'),
(5,'James','Male','Business');
INSERT INTO Courses VALUES
(101,'Database',3),(102,'Java',4),(103,'Networking',3);
INSERT INTO Enrollments VALUES
(1,1,101,80,'Semester 1'),
(2,2,101,70,'Semester 1'),
(3,3,102,90,'Semester 1'),
(4,4,103,75,'Semester 1'),
(5,5,102,85,'Semester 1');
