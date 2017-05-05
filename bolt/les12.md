### Exercise 12 — Tasks
1. Find the number of movies each director has directed
+ Find the total domestic and international sales that can be attributed to each director

_________________

#### 1

SELECT COUNT(title) AS num_movies_directed, director

FROM movies

Group BY director;

#### 2

SELECT movies.director, SUM(boxoffice.domestic_sales + boxoffice.international_sales) AS combined_sales
FROM movies

JOIN boxoffice

ON movies.Id = boxoffice.movie_id

Group BY movies.director;
