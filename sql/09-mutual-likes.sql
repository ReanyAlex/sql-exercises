/*
09: For every pair of students who both like each other, return the name and grade of both students. Include each pair only once, with the two names in alphabetical order.
Write the SQL in the file sql/09-mutual-likes.sql
*/

SELECT  a.name AS liker_name, a.grade, b.name AS likee_id, b.grade FROM exercises.student_like
JOIN exercises.students a
ON a.id = student_like.liker_id
JOIN exercises.students b
ON b.id = student_like.likee_id
WHERE a.name > b.name
ORDER BY liker_name;

-- extra names need to be fixed
