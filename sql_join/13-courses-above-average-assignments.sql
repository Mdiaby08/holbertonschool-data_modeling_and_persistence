SELECT courses.title AS courses_title,
       COUNT(assignments.id) AS assignments_count
FROM courses 
INNER JOIN assignments on assignments.courses_id = courses.id
GROUP BY courses.id, courses.title
ORDER BY courses_title ASC
