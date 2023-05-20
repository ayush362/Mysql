CREATE DATABASE school;


USE school;


CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(50),
    date_of_birth DATE,
    gender VARCHAR(10),
    email VARCHAR(30),
    address VARCHAR(100)
);



CREATE TABLE teachers(
     teacher_id INT AUTO_INCREMENT PRIMARY KEY,
     teacher_name VARCHAR(50),
     date_of_birth DATE,
     gender VARCHAR(10),
     email VARCHAR(30),
     address VARCHAR(100),
     subject_taught VARCHAR(20));


CREATE TABLE classes (
    class_id INT PRIMARY KEY,
    class_name VARCHAR(25),
    teacher_id INT,
    room_number VARCHAR(30),
    schedule VARCHAR(50),
    max_students INT,
    FOREIGN KEY (teacher_id) REFERENCES teachers (teacher_id)
);


INSERT INTO students (student_name, date_of_birth, gender, email, address)
VALUES
    ('John Doe', '2000-05-15', 'Male', 'johndoe@example.com', '123 Main St'),
    ('Jane Smith', '2001-08-20', 'Female', 'janesmith@example.com', '456 Elm St'),
    ('Mike Johnson', '1999-12-10', 'Male', 'mikejohnson@example.com', '789 Oak St'),
    ('Sarah Thompson', '2002-02-28', 'Female', 'sarahthompson@example.com', '987 Pine Ave'),
    ('David Lee', '1998-10-05', 'Male', 'davidlee@example.com', '654 Maple St'),
    ('Emily Wilson', '2000-07-12', 'Female', 'emilywilson@example.com', '321 Oakwood Ave'),
    ('Alex Davis', '2001-04-03', 'Male', 'alexdavis@example.com', '876 Cedar Ln'),
    ('Olivia Brown', '1999-09-22', 'Female', 'oliviabrown@example.com', '543 Pine St'),
    ('Daniel Harris', '2000-11-17', 'Male', 'danielharris@example.com', '789 Elmwood Dr'),
    ('Sophia Clark', '2001-06-08', 'Female', 'sophiaclark@example.com', '432 Maplewood Ave');



INSERT INTO teachers (teacher_name, date_of_birth, gender, email, address, subject_taught)
VALUES
    ('John Smith', '1980-05-10', 'Male', 'johnsmith@example.com', '123 Main St', 'Math'),
    ('Emily Johnson', '1975-08-15', 'Female', 'emilyjohnson@example.com', '456 Elm St', 'Science'),
    ('Michael Brown', '1982-12-20', 'Male', 'michaelbrown@example.com', '789 Oak St', 'English'),
    ('Sarah Davis', '1978-04-05', 'Female', 'sarahdavis@example.com', '987 Pine Ave', 'History'),
    ('David Wilson', '1985-09-22', 'Male', 'davidwilson@example.com', '654 Maple St', 'Computer Science');


INSERT INTO classes (class_id, class_name, teacher_id, room_number, schedule, max_students)
VALUES
    (1, 'Mathematics', 1, 'Room 101', 'Mon-Wed-Fri 9:00 AM - 10:30 AM', 30),
    (2, 'Science', 2, 'Room 102', 'Tue-Thu 11:00 AM - 12:30 PM', 25),
    (3, 'English', 3, 'Room 103', 'Mon-Wed 2:00 PM - 3:30 PM', 20);


SELECT * FROM students;
SELECT * FROM teachers;
SELECT * FROM classes;
SELECT * FROM students WHERE student_id = 10;
SELECT * FROM teachers WHERE teacher_id = 5;
SELECT * FROM classes WHERE class_id = 3;

-- 9 and 10 are pending...

INSERT INTO students (student_name,date_of_birth,gender,email,address)
     VALUES
     ('Ayush khatri','2004-07-21','male','ayushkhatri362@gmail.com','h no 31 saket colony tighra');


INSERT INTO teachers(teacher_name, date_of_birth, gender, email, address, subject_taught) 
VALUES
 ('sangeet khatri','1990-07-15','male','sangeet.khatri@gmail.com','provident welworth city bangalore','computer application');



    INSERT INTO classes (class_id, class_name, teacher_id, room_number, schedule, max_students)
    VALUES
    (4,'COMPUTER',4,'UF-04','MON-FRI 12:00-3:00 ',60);


UPDATE students set email='ayushkhatri362@outlook.com' WHERE student_name='Ayush khatri';
UPDATE teachers set subject_taught = 'Geography' WHERE subject_taught = 'Computer Science';
UPDATE classes set room_number = 'UF-03' WHERE max_students = 20;
DELETE FROM students WHERE student_id = 9;
DELETE FROM teachers WHERE teacher_id = 4;
-- The above command is showing this error:-
-- ERROR 1451 (23000): Cannot delete or update a parent row: a foreign key constraint fails (`school`.`classes`, CONSTRAINT `classes_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`teacher_id`))
-- And don't know what to do with it tried to search online but I have'nt studied anything related to this

DELETE from classes WHERE class_id = 2;


-- 20 is pending

SELECT teacher_name FROM teachers WHERE subject_taught = 'computer application';

