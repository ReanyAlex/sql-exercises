### Exercise 7 — Tasks
1. Find the list of all buildings that have employees
+ Find the list of all buildings and their capacity
+ List all buildings and the distinct employee roles in each building (including empty buildings)

_________________

#### 1

SELECT building FROM employees

JOIN buildings

ON employees.building = buildings.building_name

GROUP BY employees.building;

#### 2

SELECT * FROM buildings;

#### 3

SELECT DISTINCT building_name, ROLE FROM buildings

LEFT OUTER JOIN employees

ON buildings.building_name = employees.building;
