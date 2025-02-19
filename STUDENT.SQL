-- creating student table
CREATE TABLE Student(
  STU_NUM CHAR(6) PRIMARY KEY,
  STU_SNAME VARCHAR(15),
  STU_FNAME VARCHAR(15),
  STU_INITIAL CHAR(1),
  STU_STARTDATE DATE,
  COURSE_CODE CHAR(3),
  PROJ_NUM INT(2)
);

-- inserting row 1 into student
INSERT INTO Student 
  values ('1', 'Snow', 'John', 'E', '2014-04-05', '201', 6);


-- inserting row 2 into student
INSERT INTO Student 
  values ('2', 'Stark', 'Arya', 'C', '2017-07-12', '305', 11);

-- changing course code where stunum is 7
UPDATE Student
SET COURSE_CODE = 304
WHERE STU_NUM = 7;


-- removing row from student
DELETE FROM Student
WHERE stu_startdate = '2012-09-05' AND stu_sname = 'Jaime' AND stu_sname = 'Lannister' AND course_code = '101' AND proj_num = 2;


-- updating row(s) in student 
UPDATE Student
SET proj_num = 14
WHERE course_code >= '201' and stu_startdate <= '2016-01-01';


-- truncating student
DELETE FROM Student;


-- deleting table
DROP TABLE Student;
