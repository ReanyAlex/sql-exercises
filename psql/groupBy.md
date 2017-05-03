# GROUP BY

psql
```
SELECT column-listFROM table_name
WHERE [ conditions ]
GROUP BY column1, column2....columnN
ORDER BY column1, column2....columnN
```

###### * GROUP BY is a clause that is used in collaboration with the SELECT statement to group together rows in a table that have identical data
+ This is done to eliminate redundancy in the output and/or compute aggregates that apply to these groups
+ The GROUP BY clause follows the WHERE clause in a SELECT statement and precedes the ORDER BY clause
