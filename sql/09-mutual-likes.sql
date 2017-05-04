/*
09: For every pair of students who both like each other, return the name and grade of both students. Include each pair only once, with the two names in alphabetical order.
Write the SQL in the file sql/09-mutual-likes.sql
*/

SELECT  a.name AS liker_name, a.id
FROM exercises.student_like
JOIN exercises.students a
ON a.id = student_like.liker_id
INTERSECT
SELECT  b.name AS liker_name, b.id
FROM exercises.student_like
JOIN exercises.students b
ON b.id = student_like.likee_id

-- extra name need to be fixed
