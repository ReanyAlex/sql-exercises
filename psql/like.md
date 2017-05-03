# LIKE


psql
```
SELECT FROM table_nameWHERE column LIKE 'XXXX%’

SELECT FROM table_nameWHERE column LIKE '%XXXX%’

SELECT FROM table_nameWHERE column LIKE ‘XXXX_’

SELECT FROM table_nameWHERE column LIKE ‘_XXXX'

SELECT FROM table_nameWHERE column LIKE '_XXXX_'
```


###### LIKE is an operator that is used to match text values against a pattern using wildcards.
+ If the search expression can be matched the LIKE operator will return 1 for true
+ Two wildcards are
  - %
    - Represents zero, one or multiple numbers or characters
  - _
      - Represents a single number or character
