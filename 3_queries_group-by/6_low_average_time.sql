-- Get the students who's average time it takes to complete an assignment is less than the average estimated time it takes to complete an assignment.
SELECT
  s.name as student,
  AVG(a.duration) as average_assignment_duration,
  AVG(ass.duration) as average_estimated_duration
FROM
  students s
  JOIN assignment_submissions a ON a.student_id = s.id
  JOIN assignments ass ON ass.id = a.assignment_id
WHERE
  s.end_date IS NULL
GROUP BY
  student
HAVING
  avg(a.duration) < avg(ass.duration)
ORDER BY
  average_assignment_duration ASC