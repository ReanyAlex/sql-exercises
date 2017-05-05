/*
08: For every student who likes someone 2 or more grades younger than themselves, return that student's name and grade, and the name and grade of the student they like.
Write the SQL in the file sql/08-query-likes-grade-two-or-more.sql
*/

SELECT a.name AS liker_name, a.grade AS liker_grade,b.name AS likee_name, b.grade AS likee_grade FROM exercises.student_like
JOIN exercises.students a
ON liker_id = a.id
JOIN exercises.students b
ON likee_id = b.id
WHERE a.grade -2 >= b.grade;

/* results
"liker_name","liker_grade","likee_name","likee_grade"
"John",12,"Haley",10
*/
