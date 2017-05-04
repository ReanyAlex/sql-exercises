### Exercise 12 — Tasks
+ Find the number of movies each director has directed
+ Find the total domestic and international sales that can be attributed to each director

_________________

#### 1

SELECT COUNT(title) as num_movies)directed, director

FROM movies

Group BY director;

#### 2

SELECT movies.director, SUM(boxoffice.domestic_sales + boxoffice.international_sales) AS combined_sales
FROM movies

JOIN boxoffice

ON ,ovies.Id = boxoffice.movie_id

Group BY movies.director;
