-- Get important data about each assistance request.
SELECT
  t.name as teacher,
  s.name as student,
  ass.name as assignment,
  a.completed_at - a.started_at as duration
FROM
  assistance_requests a
  JOIN students s ON s.id = a.student_id
  JOIN teachers t ON t.id = a.teacher_id
  JOIN assignments ass ON ass.id = a.assignment_id
ORDER BY
  duration