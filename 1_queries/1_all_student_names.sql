-- Get the names of all of the students from a single cohort of the course.

SELECT id, name
FROM students
WHERE cohort_id = 7
ORDER BY name;