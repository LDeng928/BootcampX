-- Get the name of all teachers that performed an assistance request during a cohort.
-- SELECT
--   t.name as teacher,
--   c.name
-- FROM
--   assistance_requests ass
--   JOIN teachers t ON t.id = ass.teacher_id
--   JOIN students s ON s.id = ass.student_id
--   JOIN cohorts c ON c.id = s.cohort_id
-- WHERE
--   c.name = (
--     SELECT
--       name
--     FROM
--       cohorts
--     WHERE
--       name = 'JUL02'
--   )
-- GROUP BY
--   teacher,
--   c.name
-- ORDER BY
--   teacher
-- Alternative
SELECT
  DISTINCT teachers.name as teacher,
  cohorts.name as cohort
FROM
  teachers
  JOIN assistance_requests ON teacher_id = teachers.id
  JOIN students ON student_id = students.id
  JOIN cohorts ON cohort_id = cohorts.id
WHERE
  cohorts.name = 'JUL02'
ORDER BY
  teacher;