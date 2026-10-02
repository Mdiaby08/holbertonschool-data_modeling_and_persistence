SELECT DISTINCT instructors.name AS instructors_name
FROM instructors
JOIN courses ON courses.instructor_id = instructors.id
JOIN registrations ON registrations.course_id = courses.id
ORDER BY instructors_name ASC;
