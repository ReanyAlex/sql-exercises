### Exercise 2 — Tasks
+ Find the movie with a row id of 6
+ Find the movies released in the years between 2000 and 2010
+ Find the movies not released in the years between 2000 and 2010
+ Find the first 5 Pixar movies and their release  year

_________________

#### 1

SELECT title FROM movies

WHERE id = 6;

#### 2

SELECT title FROM movies

WHERE year BETWEEN 2000 AND 2010;

#### 3

SELECT title FROM movies

WHERE year NOT BETWEEN 2000 AND 2010;

#### 4

SELECT title, year FROM movies

WHERE id < 6;
