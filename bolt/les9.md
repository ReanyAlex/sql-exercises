### Exercise 9 — Tasks
1. List all movies and their combined sales in millions of dollars
+ List all movies and their ratings in percent
+ List all movies that were released on even number years

_________________

#### 1

SELECT movies.Title, (boxoffice.Domestic_sales + boxoffice.International_sales) / 1000000 AS combined_sales

FROM movies

JOIN boxoffice

ON movies.Id = boxoffice.Movie_id;

#### 2

SELECT movies.Title, boxoffice.rating * 10 AS combined_sales

FROM movies

JOIN boxoffice

ON movies.Id = boxoffice.Movie_id;

#### 3

SELECT Title, Year

FROM movies

WHERE year % 2 = 0;
