USE campushub;

SELECT * FROM student;

SELECT * FROM faculty;

SELECT * FROM subject;

SELECT * FROM resource;

SELECT * FROM upload_record;

SELECT *
FROM student
WHERE department='Computer';

SELECT *
FROM subject
WHERE semester=6;

SELECT *
FROM student
ORDER BY name ASC;

SELECT *
FROM resource
ORDER BY title DESC;

SELECT *
FROM student
WHERE name LIKE 'P%';

SELECT *
FROM faculty
WHERE faculty_name LIKE '%Patil%';

SELECT COUNT(*) AS TotalStudents
FROM student;

SELECT COUNT(*) AS TotalResources
FROM resource;

SELECT MAX(student_id)
FROM student;

SELECT MIN(student_id)
FROM student;

SELECT AVG(semester)
FROM subject;

SELECT department,
COUNT(*) AS TotalStudents
FROM student
GROUP BY department;


SELECT department,
COUNT(*) AS TotalStudents
FROM student
GROUP BY department
HAVING COUNT(*) > 2;


SELECT
student.name,
resource.title
FROM upload_record
INNER JOIN student
ON upload_record.student_id = student.student_id
INNER JOIN resource
ON upload_record.resource_id = resource.resource_id;


SELECT
subject.subject_name,
faculty.faculty_name
FROM subject
LEFT JOIN faculty
ON subject.faculty_id = faculty.faculty_id;


UPDATE student
SET department='Information Technology'
WHERE student_id=4;

SELECT *
FROM student
WHERE student_id=4;


INSERT INTO student(name,email,department)
VALUES
('Test Student','test@gmail.com','Computer');

DELETE FROM student
WHERE name='Test Student';


SELECT UPPER(name)
FROM student;

SELECT LOWER(faculty_name)
FROM faculty;

SELECT LENGTH(name)
FROM student;

SELECT CONCAT(name,' - ',department)
FROM student;