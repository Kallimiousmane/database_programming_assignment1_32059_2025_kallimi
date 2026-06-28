# Database Programming Assignment 1

## Student Information

**Student Name:** Kallimi ousmane brahim 

**Student ID:** 32059/2025

**Course:** C11665 - DPR400210: Database Programming

---

# Business Problem

A university needs a database system to manage students, courses, and enrollments. The system stores student information, course details, and marks obtained by students. The database also provides reports using SQL Common Table Expressions (CTEs) and Window Functions to support academic analysis and decision-making.

---

# Database Schema

This project uses three related tables:

### Students

* StudentID (Primary Key)
* StudentName
* Gender
* Department

### Courses

* CourseID (Primary Key)
* CourseName
* Credits

### Enrollments

* EnrollmentID (Primary Key)
* StudentID (Foreign Key)
* CourseID (Foreign Key)
* Marks
* Semester

---

# ER Diagram

Insert the ER Diagram image here after creating it.

Example:

```
Students
   |
   | StudentID
   |
Enrollments
   |
   | CourseID
   |
Courses
```

---

# CTE Implementations

The following Common Table Expressions were implemented:

1. Simple CTE
2. Multiple CTEs
3. Recursive CTE
4. CTE with Aggregation
5. CTE with JOIN

Each query was executed successfully and screenshots are included in the Screenshots folder.

---

# Window Function Implementations

The following SQL Window Functions were implemented:

## Ranking Functions

* ROW_NUMBER()
* RANK()
* DENSE_RANK()
* PERCENT_RANK()

## Aggregate Window Functions

* SUM() OVER()
* AVG() OVER()
* MIN() OVER()
* MAX() OVER()

## Navigation Functions

* LAG()
* LEAD()

## Distribution Functions

* NTILE()
* CUME_DIST()

All queries were executed successfully, and screenshots are provided.

---

# Analysis and Findings

## Descriptive Analysis

The database shows the academic performance of students. The highest mark is 90, the lowest mark is 70, and the average mark is 80.

## Diagnostic Analysis

Students from the IT department achieved higher marks than students from other departments. This indicates better academic performance in that department.

## Prescriptive Analysis

The university should provide additional academic support to students with lower marks while continuing to encourage high-performing students through recognition and mentoring programs.

---

# References

* Microsoft SQL Server Documentation
* SQL Server Management Studio (SSMS)
* Database Programming Course Notes

---

# Academic Integrity Statement

I declare that this assignment is my own original work. I have not copied the work from any other student or online repository. All references used have been acknowledged appropriately.

---

# Repository Structure

```
database_programming_assignment1_StudentID_FirstName

│── SQL Scripts
│      database.sql
│      cte.sql
│      window_functions.sql

│── Screenshots

│── ER Diagram

│── README.md
```
