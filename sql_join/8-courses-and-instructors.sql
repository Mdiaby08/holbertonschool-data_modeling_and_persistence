SELECT courses.title AS course_title,
       instructors.name AS instructors_name
FROM courses
JOIN instructors ON courses.instructors_id = instructors.id
ORDER BY courses.title ASC;
