### Exercise 10 — Tasks
1. Find the longest time that an employee has been at the studio
+ For each role, find the average number of years employed by employees in that role
+ Find the total number of employee years worked in each building

_________________

#### 1

SELECT MAX(years_employed) AS employed_longest

FROM employees;

#### 2

SELECT role, AVG(years_employed) AS avg_employment_by_role FROM employees

GROUP BY role;

#### 3

SELECT building, SUM(years_employed) AS total_years_by_building FROM employees

GROUP BY building;
