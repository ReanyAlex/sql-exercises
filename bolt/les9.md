### Exercise 9 — Tasks
+ List all movies and their combined sales in millions of dollars
+ List all movies and their ratings in percent
+ List all movies that were released on even number years

_________________

#### 1

SELECT Movies.Title, (boxoffice.Domestic_sales + boxoffice.International_sales) / 1000000 AS combined_sales

FROM movies

JOIN boxoffice

ON Movies.Id = boxoffice.Movie_id;

#### 2

SELECT Movies.Title, boxoffice.rating * 10 AS combined_sales

FROM movies

JOIN boxoffice

ON Movies.Id = boxoffice.Movie_id;

#### 3

SELECT Title, Year

FROM movies

WHERE Year % 2 = 0;
