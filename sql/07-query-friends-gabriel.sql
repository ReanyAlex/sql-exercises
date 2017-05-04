/* Find the names of all students who are friends with someone named Gabriel.
Write the SQL in the file sql/07-query-friends-gabriel.sql
*/

SELECT a.name, b.name FROM exercises.friend
JOIN exercises.students a
ON a.id = friend.id1
JOIN exercises.students b
ON b.id = friend.id2
WHERE a.name = 'Gabriel' OR b.name = 'Gabriel';

/* results
"name","name"
"Jordan","Gabriel"
"Gabriel","Cassandra"
"Gabriel","Andrew"
"Alexis","Gabriel"
"Gabriel","Jessica"
*/
