SELECT DISTINCT students.name
FROM students
INNER JOIN registrations ON registrations.student_id = students.id
ORDER BY students.name ASC