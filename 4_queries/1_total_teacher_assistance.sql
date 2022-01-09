SELECT
  count(a.id) as total_assistance,
  t.name as name
FROM
  teachers t
  JOIN assistance_requests a ON t.id = a.teacher_id
WHERE
  t.name = 'Waylon Boehm'
GROUP BY
  t.name