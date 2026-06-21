Student(
student_id PK,
name,
email,
department
)

Faculty(
faculty_id PK,
faculty_name,
email
)

Subject(
subject_id PK,
subject_name,
semester,
faculty_id FK
)

Resource(
resource_id PK,
title,
file_link,
subject_id FK
)

Upload(
upload_id PK,
student_id FK,
resource_id FK,
upload_date
)