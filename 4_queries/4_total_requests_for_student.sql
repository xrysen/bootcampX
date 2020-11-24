-- Get total assistance requests for student where name is 'Elliot Dickinson'

SELECT COUNT(*) AS total_requests, students.name
FROM assistance_requests
JOIN students ON students.id = student_id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name;