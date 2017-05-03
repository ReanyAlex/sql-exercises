# ORDER BY

psql
```
SELECT column-list
FROM table_name
[WHERE condition]
[ORDER BY column1, column2, .. columnN] [ASC | DESC];
```

###### ORDER BY is a clause that is used to sort data in ascending or descending order, based on one or more columns
+ You can use more than one column in the ORDER BY clause. Make sure whatever column you use to sort, that column should be available in the column selection
 + ASC - Ascending
 + DESC - Descending
