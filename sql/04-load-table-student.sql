/*
04: SQL query to load the CSV file data/students.csv for the student table
Write the SQL in the file sql/04-load-table-student.sql
*/

COPY students(id,name,grade) FROM '/Users/alexreany/Desktop/sql-exercises/data/students.csv' DELIMITER ',' CSV HEADER;
