### Exercise 4 — Tasks
1. List all directors of Pixar movies (alphabetically), without duplicates
+ List the last four Pixar movies released (ordered from most recent to least)
+ List the first five Pixar movies sorted alphabetically
+ List the next five Pixar movies sorted alphabetically

_________________

#### 1

SELECT DISTINCT director FROM movies

ORDER BY director;

#### 2

SELECT title FROM movies

ORDER BY year DESC

LIMIT 4;

#### 3

SELECT title FROM movies

ORDER BY title

LIMIT 5;

#### 4

SELECT title FROM movies

ORDER BY title

LIMIT 5 OFFSET 5;
