## Challenge: Bobby's Hobbies

https://www.khanacademy.org/computing/computer-programming/sql/relational-queries-in-sql/p/challenge-bobbys-hobbies

#### Insert one more row in persons and then one more row in hobbies that is related to the newly inserted person.

INSERT INTO persons (name, age) VALUES ("Alex Reany", 30);

INSERT INTO hobbies (person_id, name) VALUES (4, "Cooking");

#### Select the 2 tables with a join so that you can see each person's name next to their hobby.

SELECT persons.name, hobbies.name FROM persons

JOIN hobbies

ON persons.id = person_id;

#### Add an additional query that shows only the name and hobbies of 'Bobby McBobbyFace', using JOIN combined with WHERE.

SELECT persons.name, hobbies.name FROM persons

JOIN hobbies

ON persons.id = person_id

WHERE persons.name = 'Bobby McBobbyFace';
_________________

## Challenge: Customer's orders

https://www.khanacademy.org/computing/computer-programming/sql/relational-queries-in-sql/p/challenge-customers-orders

#### Come up with a query that lists the name and email of every customer followed by the item and price of orders they've made. Use a LEFT OUTER JOIN

SELECT customers.name, customers.email, orders.item, orders.price FROM customers

LEFT OUTER JOIN orders

ON customers.id = orders.customer_id;

#### Create another query that will result in one row per each customer, with their name, email, and total amount of money they've spent on orders. Sort the rows according to the total money spent, from the most spent to the least spent.

SELECT customers.name, customers.email, SUM(price) AS total_spent FROM customers

LEFT OUTER JOIN orders

ON customers.id = orders.customer_id

GROUP BY email

ORDER BY price DESC;



_________________

##Challenge: Sequels in SQL

https://www.khanacademy.org/computing/computer-programming/sql/relational-queries-in-sql/p/challenge-sequels-in-sql

#### Issue a SELECT that will show the title of each movie next to its sequel's title (or NULL if it doesn't have a sequel).

SELECT movies.title, sequel.title AS test
FROM movies

LEFT OUTER JOIN movies sequel

ON movies.sequel_id =  sequel.id;
_________________

## Challenge: FriendBook

#### Use a JOIN to display a table showing people's names with their hobbies.

SELECT persons.fullname, hobbies.name FROM persons

Join hobbies

ON persons.id = hobbies.person_id;

#### Use another SELECT with a JOIN to show the names of each pair of friends, based on the data in the friends table.

SELECT a.fullname AS friend_1, b.fullname AS friend_2 FROM friends

JOIN persons a

ON friends.person1_id = a.id

JOIN persons b

ON friends.person2_id = b.id

_________________

## Spin-off of "Project: Famous people"

#### ake your own table with some small set of “famous people”, then make more tables about things they do and join those to create nice human readable lists.
```
CREATE TABLE actors (id INTEGER PRIMARY KEY, name TEXT);

CREATE TABLE movies (id INTEGER PRIMARY KEY, actor_id INTEGER, title TEXT);

INSERT INTO actors VALUES(1, "Robert De Niro");

INSERT INTO actors VALUES(2, "Al Pacino");

INSERT INTO actors VALUES(3, "Tom Hanks");

INSERT INTO actors VALUES(4, "Marlon Brando");

INSERT INTO actors VALUES(5, "Anthony Hopkins");

INSERT INTO actors VALUES(6, "Denzel Washington");

INSERT INTO actors VALUES(7, "Jeff Bridges");

INSERT INTO actors VALUES(8, "Robert Duvall");

INSERT INTO movies VALUES(1, 4, "The Godfather");

INSERT INTO movies VALUES(2, 3, "The Da Vinci Code");

INSERT INTO movies VALUES(3, 2, "The Godfather");

INSERT INTO movies VALUES(4, 1, "Goodfellas");

INSERT INTO movies VALUES(5, 1, "The Godfather");

INSERT INTO movies VALUES(6, 8, "The Godfather");

INSERT INTO movies VALUES(7, 7, "The Big Lebowski");

INSERT INTO movies VALUES(8, 6, "Training Day");

INSERT INTO movies VALUES(9, 5, "Hannibal");
```
```
SELECT * FROM actors

JOIN movies

ON actors.id = movies.actor_id

ORDER BY title;
```
```
SELECT * FROM actors

JOIN movies

ON actors.id = movies.actor_id

WHERE title = "The Godfather"

ORDER BY title;
```
_________________
