SELECT courses.title AS course_title,
       instructor.name AS instructor_name
FROM courses
JOIN instructor ON courses.instructor_id = instructor.id
ORDER BY courses.title ASC;
