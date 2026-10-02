SELECT courses.title AS courses_title,
       COUNT(assignments.id) AS assignments_count
FROM courses 
INNER JOIN assignments on assignments.course_id = courses.id
GROUP BY courses.id, courses.title
HAVING COUNT(assignments.id) >
       (
           SELECT AVG(assignments_per_course)
           FROM (
               SELECT COUNT(*) AS assignments_per_course
               FROM assignments
               GROUP BY course_id
           )
       )    
ORDER BY courses_title ASC
