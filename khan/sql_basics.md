## Challenge: Book list database

#### Create a table to store your list of books. It should have columns for id, name, and rating.

CREATE TABLE books(id INTEGER PRIMARY KEY, name TEXT, rating INTEGER);

INSERT INTO books VALUES(1, "Clock Work Orange", 8);

#### Add three of your favorite books into the table.

INSERT INTO books VALUES(2, "Brave New World", 9);

INSERT INTO books VALUES(3, "Animal Farm", 8);

INSERT INTO books VALUES(4, "Gatiga", 9);

SELECT * FROM books;

_________________

## Challenge: Box office hits database

#### Get the results back out of the database in different ways! In this first step, just select all the movies.

CREATE TABLE movies (id INTEGER PRIMARY KEY, name TEXT, release_year INTEGER);

INSERT INTO movies VALUES (1, "Avatar", 2009);

INSERT INTO movies VALUES (2, "Titanic", 1997);

INSERT INTO movies VALUES (3, "Star Wars: Episode IV - A New Hope", 1977);

INSERT INTO movies VALUES (4, "Shrek 2", 2004);

INSERT INTO movies VALUES (5, "The Lion King", 1994);

INSERT INTO movies VALUES (6, "Disney's Up", 2009);

SELECT * FROM movies;

#### Retrieves only the movies that were released in the year 2000 or later, not before. Sort the results so that the earlier movies are listed first.

SELECT * FROM movies WHERE release_year > 2000 ORDER BY release_year;

_________________

## Challenge: TODO list database stats

#### Insert another item to your todo list with the estimated minutes it will take.

CREATE TABLE todo_list (id INTEGER PRIMARY KEY, item TEXT, minutes INTEGER);

INSERT INTO todo_list VALUES (1, "Wash the dishes", 15);

INSERT INTO todo_list VALUES (2, "vacuuming", 20);

INSERT INTO todo_list VALUES (3, "Learn some stuff on KA", 30);

INSERT INTO todo_list VALUES (4, "Cook", 40);

#### Select the SUM of minutes it will take to do all of the items on your TODO list.

SELECT SUM(minutes) FROM todo_list;

_________________

## Project: Design a store database

#### have a table for all the items in your store, and at least 5 columns for the kind of data you think you'd need to store. You should sell at least 15 items, and use select statements to order your items by price and show at least one statistic about the items.

CREATE TABLE store (id INTEGER PRIMARY KEY, item TEXT, price INTEGER,  quantity INTEGER, catagory TEXT);

INSERT INTO store VALUES (1, "carrots", 1, 20, "vegetables");

INSERT INTO store VALUES (2, "potatoes", .50, 45, "vegetables");

INSERT INTO store VALUES (3, "parsnip", 2, 10, "vegetables");

INSERT INTO store VALUES (4, "turnip", 1.50, 5, "vegetables");

INSERT INTO store VALUES (5, "peppers", 1, 22, "fruit");

INSERT INTO store VALUES (6, "tomatoes", .75, 28, "fruit");

INSERT INTO store VALUES (7, "mint", 1.25, 5, "herbs");

INSERT INTO store VALUES (8, "celery", 1, 23, "vegetables");

INSERT INTO store VALUES (9, "onons", .60, 20, "vegetables");

INSERT INTO store VALUES (10, "cabbage", .5, 54, "vegetables");

INSERT INTO store VALUES (11, "cherries", 5, 20, "fruit");

INSERT INTO store VALUES (12, "peaches", 1.25, 18, "fruit");

INSERT INTO store VALUES (13, "apples", 1, 20, "fruit");

INSERT INTO store VALUES (14, "mango", 3, 4, "fruit");

INSERT INTO store VALUES (15, "pineapples", 1, 12, "fruit");

SELECT * FROM store
ORDER BY "price"
