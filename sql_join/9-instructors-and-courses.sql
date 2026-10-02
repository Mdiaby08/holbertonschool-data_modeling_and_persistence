SELECT instructor.name AS instructor_name,
       courses.title AS course_title
FROM instructor
LEFT JOIN courses ON courses.instructor_id = instructor.id
ORDER BY instructor.name ASC, course_title ASC;
