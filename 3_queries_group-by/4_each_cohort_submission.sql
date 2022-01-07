-- Get the total number of assignment submissions for each cohort.
SELECT
  c.name as cohort,
  count(a.id) as total_submissions
FROM
  cohorts c
  JOIN students s ON s.cohort_id = c.id
  JOIN assignment_submissions a ON a.student_id = s.id
GROUP BY
  c.name
ORDER BY
  total_submissions DESC