### Exercise 3 — Tasks
1. Find all the Toy Story movies
+ Find all the movies directed by John Lasseter
+ Find all the movies (and director) not directed by John Lasseter
+ Find all the WALL-* movies

_________________

#### 1

SELECT * FROM movies

WHERE title LIKE "Toy Story%";

#### 2

SELECT title FROM movies

WHERE director = "John Lasseter";

#### 3

SELECT title FROM movies

WHERE director != "John Lasseter";

#### 4

SELECT title FROM movies

WHERE title LIKE "WALL-%";
