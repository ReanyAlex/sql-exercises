## Challenge: Karaoke song selector

#### Staring to be a lot of lines of inserted data wjile include link to the challenge below

https://www.khanacademy.org/computing/computer-programming/sql/more-advanced-sql-queries/p/challenge-karaoke-song-selector

#### Select all the song titles.

SELECT title FROM songs;

#### Add another SELECT that uses OR to show the titles of the songs that have an 'epic' mood or a release date after 1990.

SELECT title FROM songs WHERE mood = "epic" OR released > 1990;

#### Add another SELECT that uses AND to show the titles of songs that are 'epic', and released after 1990, and less than 4 minutes long.

SELECT title FROM songs WHERE mood = "epic" AND released > 1990 AND duration < 240;

_________________

## Challenge: Playlist maker

https://www.khanacademy.org/computing/computer-programming/sql/more-advanced-sql-queries/p/challenge-playlist-maker

#### Select the title of all the songs by the artist named 'Queen'.

SELECT title FROM songs WHERE artist = 'Queen';  

####  Select the name of all of the artists from the 'Pop' genre.

SELECT name FROM artists WHERE genre = 'Pop';

#### Add another query that will select the title of all the songs from the 'Pop' artists

SELECT title FROM songs WHERE artist IN(
SELECT name FROM artists Where genre = 'Pop')

_________________

## Challenge: The wordiest author

https://www.khanacademy.org/computing/computer-programming/sql/more-advanced-sql-queries/p/challenge-the-wordiest-author

#### Select all the authors who have written more than 1 million words, using GROUP BY and HAVING

SELECT author, SUM(words) AS total_words FROM books

GROUP BY author

HAVING total_words > 1000000;

#### Select all the authors that write more than an average of 150,000 words per book.

SELECT author, AVG(words) AS avg_words FROM books

GROUP BY author

Having avg_words > 150000;

_________________

## Challenge: Gradebook

https://www.khanacademy.org/computing/computer-programming/sql/more-advanced-sql-queries/p/challenge-gradebook

####  select all of the rows, and display the name, number_grade, and percent_completed, which you can compute by multiplying and rounding the fraction_completed column.

SELECT name, number_grade, ROUND(fraction_completed * 100) AS percent_completed FROM student_grades;

#### Output the letter_grade by using CASE with the number_grade column, outputting 'A' for grades > 90, 'B' for grades > 80, 'C' for grades > 70, and 'F' otherwise. Then you can use COUNT with GROUP BY to show the number of students with each of those grades.

SELECT COUNT(\*),

CASE

WHEN number_grade > 90 THEN "A"

WHEN number_grade > 80 THEN "B"

WHEN number_grade > 70 THEN "C"

ELSE "F"

END "letter_grade"

FROM student_grades

GROUP BY letter_grade;

_________________

## Project: Data dig

https://www.khanacademy.org/computing/computer-programming/sql/more-advanced-sql-queries/p/project-data-dig#spinoffs-tab-header

Data for the exercise:
https://gist.github.com/pamelafox/30acd9ca938c8a62fb92


#### Pick one of those data sets or create a data set like that, and use advanced SELECT queries to discover things about the data.
```
SELECT AVG(mass) AS avg_mass, MIN(mass) AS min_mass, MAX(mass) AS max_mass FROM solar_system_objects;
```

```
SELECT body, mass FROM solar_system_objects

ORDER BY mass;

SELECT body, mass FROM solar_system_objects

GROUP BY mass

HAVING mass > 10 AND  mass < 1000;
```
```
SELECT body, mass FROM solar_system_objects;
SELECT COUNT(\*),
    CASE
        WHEN mass > 66373960 THEN "above average mass"
        WHEN mass < 66373960 THEN "below average mass"
        END  "body_mass"
FROM solar_system_objects
GROUP BY body_mass;
```
