/*
09: For every pair of students who both like each other, return the name and grade of both students. Include each pair only once, with the two names in alphabetical order.
Write the SQL in the file sql/09-mutual-likes.sql
*/

SELECT  a.name AS liker_name, a.grade, b.name AS likee_id, b.grade FROM student_like
JOIN students a ON a.id = student_like.liker_id
JOIN students b ON b.id = student_like.likee_id
ORDER BY liker_name;




























SELECT s1.name liker_name, s1.grade liker_grade, s2.name likee_name, s2.grade likee_grade
FROM (
SELECT a.liker_id, a.likee_id
FROM student_like a
JOIN student_like b
ON a.liker_id = b.likee_id AND b.liker_id = a.likee_id
) mutual
JOIN students s1 ON s1.id = mutual.liker_id
JOIN students s2 ON s2.id = mutual.likee_id
WHERE s1.name < s2.name
ORDER BY s1.name ASC;
