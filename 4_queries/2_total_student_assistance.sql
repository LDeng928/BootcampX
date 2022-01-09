SELECT
  count(a.id) as total_assistance,
  s.name
FROM
  students s
  JOIN assistance_requests a ON s.id = a.student_id
WHERE
  s.name = 'Elliot Dickinson'
GROUP BY
  s.name