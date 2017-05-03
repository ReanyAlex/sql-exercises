# Selecting a Database

psql

\l
```
List of databases
Name    |   Owner   | Encoding |   Collate   |    Ctype    |    Access privileges
-----------+-----------+----------+-------------+-------------+-------------------------
alexreany | alexreany | UTF8     | en_US.UTF-8 | en_US.UTF-8 |
postgres  | alexreany | UTF8     | en_US.UTF-8 | en_US.UTF-8 |
template0 | alexreany | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/alexreany           +
|           |          |             |             | alexreany=CTc/alexreany
template1 | alexreany | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/alexreany           +
|           |          |             |             | alexreany=CTc/alexreany
testdb    | alexreany | UTF8     | en_US.UTF-8 | en_US.UTF-8 |
```
\c testdb

#You are now connected to database "testdb" as user "alexreany".


or

psql testdb
```
psql (9.6.2)
Type "help" for help.
```
