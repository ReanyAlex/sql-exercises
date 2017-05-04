/*
10: Find all students who do not appear in the like table (as a student who likes or is liked) and return their names and grades. Sort by grade, then by name within each grade.
Write the SQL in the file sql/10-not-liked.sql
*/

SELECT a.name AS liker_name, a.grade, b.name AS likee_id, b.grade FROM student_like
JOIN students a ON a.id != student_like.liker_id
JOIN students b ON b.id != student_like.likee_id;
