-- Get currently enrolled students' average assignment completion time.
SELECT
  s.name as student,
  AVG(a.duration) as average_assignment_duration
FROM
  students s
  JOIN assignment_submissions a ON a.student_id = s.id
WHERE
  s.end_date IS NULL
GROUP BY
  student
ORDER BY
  average_assignment_duration DESC