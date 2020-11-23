SELECT students.name, AVG(assignment_submissions.duration) AS avg_student_completion, AVG(assignments.duration) AS avg_duration
FROM students
JOIN assignment_submissions ON assignment_submissions.student_id = students.id
JOIN assignments ON assignment_submissions.assignment_id = assignments.id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration) 
ORDER BY avg_student_completion;