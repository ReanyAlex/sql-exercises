### Exercise 6 — Tasks
+ Find the domestic and international sales for each movie
+ Show the sales numbers for each movie that did better internationally rather than domestically
+ List all the movies by their ratings in descending order

_________________

#### 1

SELECT movies.title, Boxoffice.Domestic_sales, Boxoffice.International_sales

FROM movies

JOIN boxoffice

ON Movies.Id = boxoffice.movie_id;

#### 2

SELECT movies.title, boxoffice.domestic_sales, boxoffice.international_sales

FROM movies

JOIN boxoffice

ON movies.id = boxoffice.movie_id

WHERE boxoffice.domestic_sales < boxoffice.international_sales;

#### 3

SELECT movies.title

FROM movies

JOIN boxoffice

ON movies.Id = boxoffice.movie_id

ORDER BY boxoffice.rating DESC
