-- Get all cohorts with 18 or more students.
SELECT
  c.name as cohort_name,
  count(s.id) as student_count
FROM
  students s
  JOIN cohorts c ON s.cohort_id = c.id
GROUP BY
  c.name
HAVING
  count(s.id) >= 18
ORDER BY
  student_count ASC