CREATE VIEW student_resources AS

SELECT
student.name,
resource.title,
upload_record.upload_date

FROM upload_record

INNER JOIN student
ON upload_record.student_id = student.student_id

INNER JOIN resource
ON upload_record.resource_id = resource.resource_id;


SELECT * FROM student_resources;


CREATE VIEW subject_faculty AS

SELECT

subject.subject_name,

faculty.faculty_name

FROM subject

INNER JOIN faculty

ON subject.faculty_id = faculty.faculty_id;

SELECT * FROM subject_faculty;


SELECT *

FROM student

WHERE student_id >

(
SELECT AVG(student_id)

FROM student
);



SELECT name

FROM student

WHERE student_id IN

(
SELECT student_id

FROM upload_record
);



SELECT *

FROM student s

WHERE EXISTS

(
SELECT *

FROM upload_record u

WHERE s.student_id = u.student_id
);



CREATE TABLE feedback(

feedback_id INT PRIMARY KEY,

student_name VARCHAR(50) NOT NULL,

rating INT CHECK(rating BETWEEN 1 AND 5)

);


INSERT INTO feedback

VALUES

(1,'Pranav',5);



INSERT INTO feedback

VALUES

(2,'Amit',10);



CREATE USER 'facultyuser'@'localhost'

IDENTIFIED BY 'faculty123';



GRANT SELECT

ON campushub.student

TO 'facultyuser'@'localhost';



SHOW GRANTS FOR 'facultyuser'@'localhost';



REVOKE SELECT

ON campushub.student

FROM 'facultyuser'@'localhost';