-- Get the average duration of assistance requests for each cohort.
SELECT
  c.name as name,
  AVG(a.completed_at - a.started_at) as average_assistance_time
FROM
  students s
  JOIN cohorts c ON s.cohort_id = c.id
  JOIN assistance_requests a ON a.student_id = s.id
GROUP BY
  c.name
ORDER BY
  average_assistance_time