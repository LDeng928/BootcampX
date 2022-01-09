-- Get the total duration of all assistance requests for each cohort.
SELECT
  c.name as cohort,
  SUM(a.completed_at - a.started_at) as total_duration
FROM
  assistance_requests a
  JOIN students s ON a.student_id = s.id
  JOIN cohorts c ON s.cohort_id = c.id
GROUP BY
  c.name
ORDER BY
  total_duration