### Exercise 14 — Tasks
+ The director for A Bug's Life is incorrect, it was actually directed by John Lasseter
+ The year that Toy Story 2 was released is incorrect, it was actually released in 1999
+ Both the title and directory for Toy Story 8 is incorrect! The title should be "Toy Story 3" and it was directed by Lee Unkrich
_________________

#### 1

UPDATE movies

SET director = "John Lasseter"

WHERE id = 2;

#### 2

UPDATE movies

SET year = 1999

WHERE id = 3;

#### 3

UPDATE movies

SET title = "Toy Story 3", Director = "Lee Unkrich"

WHERE id = 11;
