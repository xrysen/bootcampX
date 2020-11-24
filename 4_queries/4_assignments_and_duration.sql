-- Select the day, number of assignments, and the total duration of assignments.
-- Order the results by the day.

SELECT day, COUNT(id) AS num_assignments, SUM(duration) AS duration
FROM assignments
GROUP BY day
ORDER BY day;