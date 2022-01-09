-- Get the cohort with the longest average duration of assistance requests.
SELECT
  c.name as name,
  AVG(a.completed_at - a.started_at) as average_assistance_time
FROM
  assistance_requests a
  JOIN students s ON a.student_id = s.id
  JOIN cohorts c ON s.cohort_id = c.id
GROUP BY
  c.name
ORDER BY
  average_assistance_time DESC
LIMIT
  1;