### Exercise 17 — Tasks
1. Add a column named Aspect_ratio with a FLOAT data type to store the aspect-ratio each movie was released in. ✓
+ Add another column named Language with a TEXT data type to store the language that the movie was released in. Ensure that the default for this language is English.
_________________

#### 1

ALTER TABLE movies

ADD aspect_ratio FLOAT;

#### 2

ALTER TABLE movies

ADD language TEXT

DEFAULT "English";
