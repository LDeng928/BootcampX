-- Get each day with the total number of assignments and the total duration of the assignments.
SELECT
  day,
  count(id),
  SUM(duration)
FROM
  assignments
GROUP BY
  day
ORDER BY
  day