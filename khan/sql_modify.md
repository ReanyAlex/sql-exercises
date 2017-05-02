## Challenge: Dynamic Documents

https://www.khanacademy.org/computing/computer-programming/sql/modifying-databases-with-sql/p/challenge-dynamic-documents

#### Use UPDATE to change the author to 'Jackie Draper' for all rows where it's currently 'Jackie Paper'. Then re-select all the rows to make sure the table changed like you expected.

UPDATE documents SET author = 'Jackie Draper'
WHERE author = 'Jackie Paper';

SELECT * FROM documents;

#### Delete a row, being very careful not to delete all the rows. Only delete the row where the title is 'Things I'm Afraid Of'. Then re-select all the rows to make sure the table changed like you expected.

DELETE FROM documents WHERE title =  "Things I'm Afraid Of";

SELECT * FROM documents;

_________________

## Challenge: Clothing alterations

https://www.khanacademy.org/computing/computer-programming/sql/modifying-databases-with-sql/p/challenge-clothing-alterations

#### Use ALTER to add a 'price' column to the table. Then select all the columns in each row to see what your table looks like now.

ALTER TABLE clothes ADD price INTEGER;

SELECT * FROM clothes;

#### Assign each item a price, using UPDATE - item 1 should be 10 dollars, item 2 should be 20 dollars, item 3 should be 30 dollars. When you're done, do another SELECT of all the rows to check that it worked as expected.

UPDATE clothes SET price = 10 WHERE id =1;

UPDATE clothes SET price = 20 WHERE id =2;

UPDATE clothes SET price = 30 WHERE id =3;

SELECT * FROM clothes;

#### Insert a new item into the table that has all three attributes filled in, including 'price'. Do one final SELECT of all the rows to check it worked.

INSERT INTO clothes VALUES (4, "shorts", "strips", 40);

SELECT * FROM clothes;

_________________

## Spin-off of "Project: App impersonator"

https://www.khanacademy.org/computing/computer-programming/sql/modifying-databases-with-sql/p/project-app-impersonator

#### In this project, you're going to imagine that the app stores your data in a SQL database (which is pretty likely!), and write SQL statements that might look like their own SQL.
```
CREATE TABLE ingredients (id INTEGER PRIMARY KEY AUTOINCREMENT, item TEXT );

INSERT INTO ingredients (item) VALUES ("Carrots");

INSERT INTO ingredients (item) VALUES ("Onions");

INSERT INTO ingredients (item) VALUES ("Celery");

INSERT INTO ingredients (item) VALUES ("Chicken");

INSERT INTO ingredients (item) VALUES ("Butter");

INSERT INTO ingredients (item) VALUES ("Salt");

INSERT INTO ingredients (item) VALUES ("Chicken Stock");

INSERT INTO ingredients (item) VALUES ("Button Mushrooms");

INSERT INTO ingredients (item) VALUES ("Bacon");

INSERT INTO ingredients (item) VALUES ("Rice");
```
```
ALTER TABLE ingredients ADD quantity INTEGER;
```
```
UPDATE ingredients SET quantity = 1 WHERE id = 1;

UPDATE ingredients SET quantity = 2 WHERE id = 2;

UPDATE ingredients SET quantity = 3 WHERE id = 3;

UPDATE ingredients SET quantity = 1 WHERE id = 4;

UPDATE ingredients SET quantity = .5 WHERE id = 5;

UPDATE ingredients SET quantity = .01 WHERE id = 6;

UPDATE ingredients SET quantity = 4 WHERE id = 7;

UPDATE ingredients SET quantity = 10 WHERE id = 8;

UPDATE ingredients SET quantity = 5 WHERE id = 9;

DELETE FROM ingredients WHERE id = 10;

SELECT * FROM ingredients;
```
