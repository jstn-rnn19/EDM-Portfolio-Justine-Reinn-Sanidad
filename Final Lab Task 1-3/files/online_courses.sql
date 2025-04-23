CREATE TABLE courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(255) NOT NULL,
    category VARCHAR(100) NOT NULL,
    enrollment_limit INT NOT NULL,
    students_enrolled INT NOT NULL
);

INSERT INTO courses (course_name, category, enrollment_limit, students_enrolled)
VALUES
    ('Data Science', 'Technology', 50, 45),
    ('Graphic Design', 'Arts', 30, 25),
    ('Digital Marketing', 'Business', 40, 35),
    ('Introduction to Python', 'Technology', 100, 90),
    ('Creative Writing', 'Literature', 25, 20),
    ('UX/UI Design', 'Arts', 50, 40),
    ('Project Management', 'Business', 60, 55),
    ('Artificial Intelligence', 'Technology', 50, 48),
    ('Public Speaking', 'Communication', 30, 28),
    ('Photography', 'Arts', 25, 18),
    ('Web Development', 'Technology', 75, 70),
    ('SEO Strategies', 'Business', 30, 29),
    ('Blockchain Basics', 'Technology', 50, 50),
    ('Accounting 101', 'Business', 45, 40),
    ('Film Editing', 'Arts', 35, 33),
    ('Machine Learning', 'Technology', 60, 55),
    ('Speech Writing', 'Communication', 20, 15),
    ('Interior Design', 'Arts', 40, 38),
    ('Leadership Training', 'Business', 50, 48),
    ('Cybersecurity', 'Technology', 70, 65);