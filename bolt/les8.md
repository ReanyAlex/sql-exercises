### Exercise Exercise 8 — Tasks
1. Find the name and role of all employees who have not been assigned to a building
+ Find the names of the buildings that hold no employees
_________________

#### 1

SELECT name, role FROM employees

WHERE building IS NULL

#### 2

SELECT DISTINCT building_name, employees.name FROM buildings

LEFT OUTER JOIN employees

ON buildings.building_name = employees.building

WHERE employees.name IS NULL;
