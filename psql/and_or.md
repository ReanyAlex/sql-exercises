# AND and OR

### AND

psql
```
* SELECT column1, column2, columnN   FROM table_name
WHERE [condition1] AND [condition2]...AND [conditionN];
```


###### AND Allows multiple conditions in a PostgresSQL statements WHERE clause that all need to be true

### OR

psql
```
* SELECT column1, column2, columnN   FROM table_name
WHERE [condition1] OR [condition2]...AND [conditionN];
```


###### OR Allows multiple conditions in a PostgresSQL statements WHERE clause that one or more need to be true
