### Exercise 11 — Tasks
1. Find the number of Artists in the studio (without a HAVING clause)
+ Find the number of Employees of each role in the studio
+ Find the total number of years employed by all Engineers

_________________

#### 1

SELECT COUNT(role)

FROM employees

WHERE role = "artist";

#### 2

SELECT role, COUNT(role)

FROM employees

GROUP BY role;

#### 3

SELECT role, Sum(years_employed)

FROM employees

GROUP BY role

HAVING role = "engineer";
