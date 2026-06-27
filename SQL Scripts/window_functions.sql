SELECT StudentID,Marks,ROW_NUMBER() OVER(ORDER BY Marks DESC) RowNum FROM Enrollments;
SELECT StudentID,Marks,RANK() OVER(ORDER BY Marks DESC) RankNo FROM Enrollments;
SELECT StudentID,Marks,DENSE_RANK() OVER(ORDER BY Marks DESC) DenseRank FROM Enrollments;
SELECT StudentID,Marks,PERCENT_RANK() OVER(ORDER BY Marks DESC) PercentRank FROM Enrollments;
SELECT StudentID,Marks,SUM(Marks) OVER() TotalMarks,AVG(Marks) OVER() AverageMarks,MIN(Marks) OVER() LowestMark,MAX(Marks) OVER() HighestMark FROM Enrollments;
SELECT StudentID,Marks,LAG(Marks) OVER(ORDER BY Marks) PreviousMark,LEAD(Marks) OVER(ORDER BY Marks) NextMark FROM Enrollments;
SELECT StudentID,Marks,NTILE(2) OVER(ORDER BY Marks DESC) GroupNo,CUME_DIST() OVER(ORDER BY Marks) Distribution FROM Enrollments;
