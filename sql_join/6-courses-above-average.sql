SELECT courses.title
FROM courses
LEFT JOIN enrollments ON enrollments.course_id = courses.id
GROUP BY courses.id, courses.title
HAVING COUNT(enrollments.student_id) >
(
    SELECT AVG(enrollment_count)
    FROM (
        SELECT COUNT(*) AS enrollment_count
        FROM enrollments
        GROUP BY course_id
    ) AS t
)
ORDER BY courses.title ASC;
