-- You are given two tables: Students and Grades. Students contains three columns ID, Name and Marks.



-- Grades contains the following data:



-- Ketty gives Eve a task to generate a report containing three columns: Name, Grade and Mark. Ketty doesn't want the NAMES of those students who received a grade lower than 8. The report must be in descending order by grade -- i.e. higher grades are entered first. If there is more than one student with the same grade (8-10) assigned to them, order those particular students by their name alphabetically. Finally, if the grade is lower than 8, use "NULL" as their name and list them by their grades in descending order. If there is more than one student with the same grade (1-7) assigned to them, order those particular students by their marks in ascending order.

-- Write a query to help Eve.

-- Sample Input



-- Sample Output

-- Maria 10 99
-- Jane 9 81
-- Julia 9 88 
-- Scarlet 8 78
-- NULL 7 63
-- NULL 7 68

-- Note

-- Print "NULL"  as the name if the grade is less than 8.

-- Explanation

-- Consider the following table with the grades assigned to the students:



-- So, the following students got 8, 9 or 10 grades:

-- Maria (grade 10)
-- Jane (grade 9)
-- Julia (grade 9)
-- Scarlet (grade 8)

SELECT IF(Marks >= 70,Name, NULL) AS Name, (SELECT Grade FROM Grades WHERE Grade = 
       CASE 
       WHEN Marks >= 90 AND Marks <= 100 THEN 10
       WHEN Marks >= 80 AND Marks <= 89 THEN 9
       WHEN Marks >= 70 AND Marks <= 79 THEN 8
       WHEN Marks >= 60 AND Marks <= 69 THEN 7
       WHEN Marks >= 50 AND Marks <= 59 THEN 6
       WHEN Marks >= 40 AND Marks <= 49 THEN 5
       WHEN Marks >= 30 AND Marks <= 39 THEN 4
       WHEN Marks >= 20 AND Marks <= 29 THEN 3
       WHEN Marks >= 10 AND Marks <= 19 THEN 3
       WHEN Marks >= 0 AND Marks <= 9 THEN 1
       END) AS Grade
       , Marks
FROM Students
ORDER BY Grade DESC, CASE WHEN Grade < 8 THEN Marks ELSE Name END

