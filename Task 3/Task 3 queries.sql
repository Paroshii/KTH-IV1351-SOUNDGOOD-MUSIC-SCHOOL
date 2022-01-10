--1--
--#1.1--
CREATE VIEW monthly_lessons AS 
SELECT EXTRACT(MONTH FROM lessons.date) AS month, Count(*) AS number_of_lessons 
FROM lessons 
WHERE EXTRACT(YEAR FROM lessons.date) = '2021' 
GROUP BY EXTRACT (MONTH FROM lessons.date);

--#1.2--
CREATE VIEW monthly_specific_lessons AS 
SELECT EXTRACT(MONTH FROM lessons.date) AS Month, Count(*) AS number_of_lessons, lesson_type
FROM lessons
WHERE EXTRACT(YEAR FROM lessons.date) = '2021'
GROUP BY EXTRACT (MONTH FROM lessons.date), lessons.lesson_type;

--no--
SELECT CAST(Count(*) AS decimal)/ 12 AS avg_lessons_per_year
FROM lessons
WHERE EXTRACT(YEAR FROM lessons.date) = '2021';



--2-- first is WRONG
SELECT EXTRACT(MONTH FROM lessons.date) as month, lessons.lesson_type, CAST(Count(*) AS decimal)/12 AS avg_lessons
FROM booking_lesson
INNER JOIN lessons ON booking_lesson.booking_id = lessons.booking_id
WHERE EXTRACT(YEAR FROM lessons.date) = '2021' 
GROUP BY lessons.date, booking_lesson.lesson_type, lessons.lesson_type;

OR
CREATE VIEW average_lessons AS 
SELECT CAST(COUNT(lesson_type) AS decimal) AS number_of_lessons, CAST(COUNT(lesson_type) AS decimal)/12 AS average_per_year,
lesson_type, EXTRACT(MONTH FROM lessons.date) AS month
FROM lessons 
WHERE date_part('year', lessons.date) = '2021'
GROUP BY lessons.lesson_type, EXTRACT(MONTH FROM lessons.date);


--specific--
--Ensemble no--
SELECT EXTRACT(MONTH FROM lessons.date) AS date, ensemble.genre AS genre, CAST(Count(*) AS decimal)/12 AS avg_lessons
FROM lessons, ensemble
WHERE EXTRACT(YEAR FROM lessons.date) = '2021' 
GROUP BY EXTRACT(MONTH FROM lessons.date), ensemble.genre;

--group no--
SELECT EXTRACT(MONTH FROM lessons.date) AS date, group_lesson.group_category_name AS instrument, CAST(Count(*) AS decimal)/12 AS avg_lessons
FROM lessons, group_lesson
WHERE EXTRACT(YEAR FROM lessons.date) = '2021' 
GROUP BY EXTRACT(MONTH FROM lessons.date), group_lesson.group_category_name;




--3--
CREATE MATERIALIZED VIEW instructor_lessons AS 
SELECT i.teacher_id AS instructor, COUNT(lessons.instructor_id) AS number_of_lessons, EXTRACT (MONTH FROM lessons.date) AS month 
FROM instructor AS i
INNER JOIN lessons ON lessons.instructor_id = i.teacher_id
WHERE date_part('year', lessons.date) = '2021'
GROUP BY instructor, lessons.date
HAVING COUNT(lessons.instructor_id) > 0;




--4--
CREATE MATERIALIZED VIEW ensemble_lessons AS 
SELECT EXTRACT(WEEK FROM lessons.date) AS date_week, ensemble.genre, ensemble.max_number_of_students,
ensemble.min_number_of_students, ensemble.booked_seats,


CASE
WHEN (ensemble.max_number_of_students - ensemble.booked_seats) < 1 THEN 'Lesson full'
WHEN (ensemble.max_number_of_students - ensemble.booked_seats) = 1 THEN '1 Seat left' 
WHEN (ensemble.max_number_of_students - ensemble.booked_seats) = 2 THEN '2 Seat left'
ELSE 'more seats left'
END seats_left

FROM ensemble

INNER JOIN lessons ON ensemble.lesson_id = lessons.lesson_id

WHERE date_part('week', lessons.date) = 45

ORDER BY ensemble.genre, date;









