SELECT courses.title AS courses_title,
       assignments.title AS assignments_title
FROM courses
LEFT JOIN assignments ON assignments.course_id = courses.id
ORDER BY courses_title ASC, assignments_title ASC;
