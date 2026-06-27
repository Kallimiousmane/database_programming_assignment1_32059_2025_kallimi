-- Simple CTE
WITH StudentMarks AS (SELECT StudentID,Marks FROM Enrollments)
SELECT * FROM StudentMarks;
GO
-- Multiple CTE
WITH ITStudents AS (SELECT * FROM Students WHERE Department='IT'),
Scores AS (SELECT StudentID,Marks FROM Enrollments)
SELECT * FROM ITStudents JOIN Scores ON ITStudents.StudentID=Scores.StudentID;
GO
-- Recursive CTE
WITH Numbers AS (
SELECT 1 AS Num
UNION ALL
SELECT Num+1 FROM Numbers WHERE Num<10)
SELECT * FROM Numbers OPTION (MAXRECURSION 10);
GO
-- Aggregation CTE
WITH AvgMarks AS (SELECT AVG(Marks) AvgMark FROM Enrollments)
SELECT * FROM AvgMarks;
GO
-- CTE with JOIN
WITH StudentCourse AS (
SELECT s.StudentName,c.CourseName,e.Marks
FROM Students s JOIN Enrollments e ON s.StudentID=e.StudentID
JOIN Courses c ON c.CourseID=e.CourseID)
SELECT * FROM StudentCourse;
