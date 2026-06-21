USE campushub;

INSERT INTO faculty (faculty_name, email)
VALUES
('Dr. Amit Patil', 'amit@campushub.com'),
('Prof. Sneha Kulkarni', 'sneha@campushub.com'),
('Prof. Rahul Shah', 'rahul@campushub.com'),
('Prof. Neha Joshi', 'neha@campushub.com'),
('Prof. Kiran Desai', 'kiran@campushub.com');

INSERT INTO subject (subject_name, semester, faculty_id)
VALUES
('Database Engineering',6,1),
('Python Programming',6,2),
('Cloud Computing',6,3),
('Machine Learning',6,4),
('Web Development',6,5);

INSERT INTO student (name,email,department)
VALUES
('Pranav Patil','pranav@gmail.com','Computer'),
('Amit Sharma','amit@gmail.com','Computer'),
('Riya Patil','riya@gmail.com','Computer'),
('Rohan Gupta','rohan@gmail.com','IT'),
('Sneha Shah','sneha@gmail.com','IT'),
('Anjali Patil','anjali@gmail.com','Computer'),
('Rahul Jadhav','rahul@gmail.com','Computer'),
('Karan More','karan@gmail.com','IT'),
('Pooja Kulkarni','pooja@gmail.com','Computer'),
('Aditya Joshi','aditya@gmail.com','IT');

INSERT INTO resource (title,file_link,subject_id)
VALUES
('DBMS Notes','dbms.pdf',1),
('SQL Cheat Sheet','sql.pdf',1),
('Python Basics','python.pdf',2),
('Flask Guide','flask.pdf',2),
('Cloud Notes','cloud.pdf',3),
('AWS Basics','aws.pdf',3),
('ML Introduction','ml.pdf',4),
('Regression Notes','regression.pdf',4),
('HTML Guide','html.pdf',5),
('CSS Guide','css.pdf',5);

INSERT INTO upload_record (student_id,resource_id)
VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10);

SELECT * FROM faculty;

SELECT * FROM subject;

SELECT * FROM student;

SELECT * FROM resource;

SELECT * FROM upload_record;