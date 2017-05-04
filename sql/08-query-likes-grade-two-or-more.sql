/*
08: For every student who likes someone 2 or more grades younger than themselves, return that student's name and grade, and the name and grade of the student they like.
Write the SQL in the file sql/08-query-likes-grade-two-or-more.sql
*/

SELECT a.name AS liker_name, a.grade, b.name AS likee_id, b.grade FROM student_like
JOIN students a ON a.id = student_like.liker_id
JOIN students b ON b.id = student_like.likee_id
WHERE a.grade + 2 = b.grade OR  b.grade + 2 = a.grade;
