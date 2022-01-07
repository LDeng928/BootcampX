-- Get the total amount of time that all students from a specific cohort have spent on all assignments.
SELECT
  sum(a.duration) as total_duration
FROM
  cohorts as c
  JOIN students as s ON c.id = s.cohort_id
  JOIN assignment_submissions as a ON s.id = a.student_id
WHERE
  c.name = 'FEB12'