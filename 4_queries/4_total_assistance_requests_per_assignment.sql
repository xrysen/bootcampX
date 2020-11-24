-- Select the assignment's id, day, chapter, name and the total assistances.
-- Order by total assistances in order of most to least.

SELECT assignments.id, assignments.day, assignments.chapter, assignments.name, COUNT(assistance_requests.assignment_id) AS total_assistances
FROM assignments
JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_assistances DESC;