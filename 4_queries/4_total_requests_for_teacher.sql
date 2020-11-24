-- Total number for assistance reqeusts when teachers is named 'Waylon Boehm'
SELECT COUNT(*), teachers.name
FROM assistance_requests
JOIN teachers ON assistance_requests.teacher_id = teachers.id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY teachers.name;