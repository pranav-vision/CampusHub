-- Use Database
USE campushub;

-- =========================
-- Student Table
-- =========================
CREATE TABLE student (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    department VARCHAR(50) NOT NULL
);

-- =========================
-- Faculty Table
-- =========================
CREATE TABLE faculty (
    faculty_id INT AUTO_INCREMENT PRIMARY KEY,
    faculty_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- =========================
-- Subject Table
-- =========================
CREATE TABLE subject (
    subject_id INT AUTO_INCREMENT PRIMARY KEY,
    subject_name VARCHAR(100) NOT NULL,
    semester INT CHECK (semester BETWEEN 1 AND 8),
    faculty_id INT,
    FOREIGN KEY (faculty_id)
        REFERENCES faculty(faculty_id)
);

-- =========================
-- Resource Table
-- =========================
CREATE TABLE resource (
    resource_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    file_link VARCHAR(255),
    subject_id INT,
    FOREIGN KEY (subject_id)
        REFERENCES subject(subject_id)
);

-- =========================
-- Upload Record Table
-- =========================
CREATE TABLE upload_record (
    upload_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    resource_id INT,
    upload_date DATE DEFAULT (CURRENT_DATE),
    FOREIGN KEY (student_id)
        REFERENCES student(student_id),
    FOREIGN KEY (resource_id)
        REFERENCES resource(resource_id)
);