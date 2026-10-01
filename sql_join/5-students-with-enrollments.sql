SELECT students.name AS student_name
FROM courses
WHERE student_id IN (
    SELECT student_id
    FROM enrollment
);

