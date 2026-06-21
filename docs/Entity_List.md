# CampusHub - Entity List

## 1. Student

Stores student information.

Attributes:
- student_id
- name
- email
- department

----------------------------

## 2. Faculty

Stores faculty information.

Attributes:
- faculty_id
- faculty_name
- email

----------------------------

## 3. Subject

Stores subject details.

Attributes:
- subject_id
- subject_name
- semester

----------------------------

## 4. Resource

Stores notes and study material.

Attributes:
- resource_id
- title
- file_link
- subject_id

----------------------------

## 5. Upload

Stores upload history.

Attributes:
- upload_id
- student_id
- resource_id
- upload_date