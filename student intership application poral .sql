CREATE DATABASE internship_portal;
USE internship_portal;

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50) UNIQUE,
    phone VARCHAR(15)
);

CREATE TABLE internships (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    company VARCHAR(50),
    location VARCHAR(50)
);

CREATE TABLE applications (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    internship_id INT,
    status VARCHAR(20) DEFAULT 'Pending',
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (internship_id) REFERENCES internships(id)
);

-- Sample internships
INSERT INTO internships (title, company, location) VALUES
('Java Developer Intern', 'TechSoft', 'Chennai'),
('Web Development Intern', 'CodeWorks', 'Bangalore'),
('Data Science Intern', 'AI Solutions', 'Hyderabad');