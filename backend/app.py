from flask import Flask, render_template
from db import get_connection

app = Flask(
    __name__,
    template_folder="../templates",
    static_folder="../static"
)

# -----------------------------
# Home Page
# -----------------------------
@app.route("/")
def home():
    return render_template("index.html")


# -----------------------------
# Students Page
# -----------------------------
@app.route("/students")
def students():

    connection = get_connection()
    cursor = connection.cursor()

    cursor.execute("SELECT * FROM student")
    students = cursor.fetchall()

    cursor.close()
    connection.close()

    return render_template(
        "students.html",
        students=students
    )


# -----------------------------
# Faculty Page
# -----------------------------
@app.route("/faculty")
def faculty():

    connection = get_connection()
    cursor = connection.cursor()

    cursor.execute("SELECT * FROM faculty")
    faculty = cursor.fetchall()

    cursor.close()
    connection.close()

    return render_template(
        "faculty.html",
        faculty=faculty
    )


# -----------------------------
# Resources Page
# -----------------------------
@app.route("/resources")
def resources():

    connection = get_connection()
    cursor = connection.cursor()

    cursor.execute("SELECT * FROM resource")
    resources = cursor.fetchall()

    cursor.close()
    connection.close()

    return render_template(
        "resources.html",
        resources=resources
    )


# -----------------------------
# Upload Page
# -----------------------------
@app.route("/upload")
def upload():
    return render_template("upload.html")


# -----------------------------
# Run Flask Application
# -----------------------------
if __name__ == "__main__":
    app.run(debug=True)