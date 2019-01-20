CREATE DATABASE University3;

USE University3;

CREATE TABLE ALUMNI (
  alumniEmail VARCHAR(200)  PRIMARY KEY,
  lastName VARCHAR(200) NOT NULL,
  firstName VARCHAR(200) NOT NULL,
  formerStudentID INT NOT NULL
);

CREATE TABLE ALUMNI_HOME (
  alumniEmail VARCHAR(200),
  homeAddress VARCHAR(200) NOT NULL,
  homeCity VARCHAR(200) NOT NULL,
  homeState VARCHAR(200) NOT NULL,
  homeZIP INT(5) NOT NULL,
  homePhone VARCHAR(12) NOT NULL,
  FOREIGN KEY (alumniEmail) REFERENCES ALUMNI(alumniEmail)
);


CREATE TABLE COMPANY (
  companyPhone VARCHAR(12) NOT NULL PRIMARY KEY,
  companyName VARCHAR(200) NOT NULL,
  companyAddress VARCHAR(200) NOT NULL,
  companyCity VARCHAR(200) NOT NULL,
  companyState  VARCHAR(200) NOT NULL,
  companyZIP INT(5) NOT NULL
);


CREATE TABLE MENTOR (
  mentorEmail VARCHAR(200) NOT NULL PRIMARY KEY,
  lastName VARCHAR(200) NOT NULL,
  firstName VARCHAR(200) NOT NULL,
  alumniEmail VARCHAR(200),
  companyPhone VARCHAR(12),
  FOREIGN KEY (alumniEmail) REFERENCES ALUMNI(alumniEmail),
  FOREIGN KEY (companyPhone) REFERENCES COMPANY(companyPhone)
);

CREATE TABLE STUDENT (
  studentID INT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(200) NOT NULL,
  lastName VARCHAR(200) NOT NULL,
  firstName VARCHAR(200) NOT NULL,
  dormPhone VARCHAR(12) NOT NULL,
  dormName VARCHAR(200) NOT NULL,
  dormRoom INT NOT NULL
);

CREATE TABLE MENTOR_STUDENT_DATE (
  mentorEmail VARCHAR(200),
  studentID INT,
  startDate DATE,
  endDate DATE,
  FOREIGN KEY (mentorEmail) REFERENCES MENTOR(mentorEmail),
  FOREIGN KEY (studentID) REFERENCES STUDENT(studentID)
);

CREATE TABLE GRADUATION (
  studentID INT,
  studentDegree VARCHAR(200) NOT NULL PRIMARY KEY,
  dateEnrolled DATE,
  dateGraduated DATE,
  FOREIGN KEY (studentID) REFERENCES STUDENT(studentID)
);

CREATE TABLE ADVISOR (
  advisorID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(200),
  lastName VARCHAR(200) NOT NULL,
  firstName VARCHAR(200) NOT NULL
);

CREATE TABLE ADVISOR_STUDENT_DATE (
  advisorID INT,
  studentID INT,
  startDate DATE,
  endDate DATE,
  FOREIGN KEY (advisorID) REFERENCES ADVISOR(advisorID),
  FOREIGN KEY (studentID) REFERENCES STUDENT(studentID)
);

CREATE TABLE ADVISOR_MENTOR_DATE (
  advisorID INT,
  mentorEmail VARCHAR(200),
  startDate DATE,
  endDate DATE,
  FOREIGN KEY (advisorID) REFERENCES ADVISOR(advisorID),
  FOREIGN KEY (mentorEmail) REFERENCES MENTOR(mentorEmail)
);

CREATE TABLE DEPARTMENT (
  advisorID INT,
  departmentName VARCHAR(200) NOT NULL PRIMARY KEY,
  officeBuildingName VARCHAR(200) NOT NULL,
  officeRoom INT NOT NULL,
  officePhone VARCHAR(12) NOT NULL,
  FOREIGN KEY (advisorID) REFERENCES ADVISOR(advisorID)
);
