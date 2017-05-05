### Review 1 — Tasks
1. List all the Canadian cities and their populations ✓
+ Order all the cities in the United States by their latitude from north to south
+ List all the cities west of Chicago, ordered from west to east
+ List the two largest cities in Mexico (by population)
+ List the third and fourth largest cities (by population) in the United States and their population

_________________

#### 1

SELECT City, Population FROM north_american_cities

WHERE Country = "Canada";

#### 2

SELECT City FROM north_american_cities

WHERE Country = "United States"

ORDER BY latitude DESC;

#### 3

SELECT City, longitude FROM north_american_cities

WHERE longitude < (SELECT Longitude FROM north_american_cities WHERE City = "Chicago")

ORDER BY longitude;

#### 4

SELECT city FROM north_american_cities

WHERE country = "Mexico"

ORDER BY population DESC

LIMIT 2;

#### 5

SELECT City FROM north_american_cities

WHERE country = "United States"

ORDER BY population DESC

LIMIT 2 OFFSET 2;
