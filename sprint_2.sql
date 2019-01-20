INSERT INTO ADVISOR (email, lastName, firstName) VALUES ("John.Doe@hu.edu", "Doe", "John");
INSERT INTO ADVISOR (email, lastName, firstName) VALUES ("Alice.Wonderland@hu.edu", "Wonderland", "Alice");
INSERT INTO ADVISOR (email, lastName, firstName) VALUES ("Bob.Dylan@hu.edu", "Dylan", "Bob");

INSERT INTO STUDENT (email, lastName, firstName, dormPhone, dormName, dormRoom) VALUES ("John.Bob@students.hu.edu", "Bob", "John", "516-555-5655", "Whitman", 1 );
INSERT INTO STUDENT (email, lastName, firstName, dormPhone, dormName, dormRoom) VALUES ("Ryan.King@students.hu.edu", "King", "Ryan", "516-555-5655", "Whitman", 1 );
INSERT INTO STUDENT (email, lastName, firstName, dormPhone, dormName, dormRoom) VALUES ("Michael.Shawn@students.hu.edu", "Shawn", "Michael", "516-555-5655", "Whitman", 1 );
INSERT INTO STUDENT (email, lastName, firstName, dormPhone, dormName, dormRoom) VALUES ("Troy.Bell@students.hu.edu", "Bell", "Troy", "718-525-1615", "Hale", 1 );
INSERT INTO STUDENT (email, lastName, firstName, dormPhone, dormName, dormRoom) VALUES ("Nickel.Sauce@students.hu.edu", "Sauce", "Nickel", "718-525-1615", "Hale", 1 );
INSERT INTO STUDENT (email, lastName, firstName, dormPhone, dormName, dormRoom) VALUES ("Drake.Taco@students.hu.edu", "Taco", "Drake", "516-555-5655", "Whitman", 1 );

INSERT INTO ALUMNI (alumniEmail,lastName, firstName, formerStudentID) VALUES ("Anthony.Jaghab@somewhere.com", "Jaghab", "Anthony", 1001);
INSERT INTO ALUMNI (alumniEmail,lastName, firstName, formerStudentID) VALUES ("Jupraj.Singh@somewhere.com", "Singh", "Jupraj", 1002);
INSERT INTO ALUMNI (alumniEmail,lastName, firstName, formerStudentID) VALUES ("Andre.King@somewhere.com", "King", "Andre", 1003);

INSERT INTO COMPANY (companyPhone, companyName, companyAddress, companyCity, companyState, companyZIP) VALUES ("516-111-1112", "Richard Allen", "400 Forest Ave", ",West Hempstead", ",NY", 11552);
INSERT INTO COMPANY (companyPhone, companyName, companyAddress, companyCity, companyState, companyZIP) VALUES ("516-111-1113", "Coca Cola", "321 Hamburger Ave", ",West Hempstead", ",NY", 11552);
INSERT INTO COMPANY (companyPhone, companyName, companyAddress, companyCity, companyState, companyZIP) VALUES ("516-111-1114", "Pepsi", "21 West Valley Ave", ",West Hempstead", ",NY", 11552);

INSERT INTO MENTOR (mentorEmail, lastName, firstName, alumniEmail, companyPhone) VALUES ("Andre.King@companyname.com", "King", "Andre", "Andre.King@somewhere.com", "516-111-1112");
INSERT INTO MENTOR (mentorEmail, lastName, firstName, alumniEmail, companyPhone) VALUES ("Michael.Junior@companyname.com", "Junior", "Michael", NULL, "516-111-1114");
INSERT INTO MENTOR (mentorEmail, lastName, firstName, alumniEmail, companyPhone) VALUES ("Connor.Junior@companyname.com", "Junior", "Connor", NULL, "516-111-1113");

INSERT INTO ADVISOR_STUDENT_DATE (advisorID, studentID, startDate, endDate) VALUES (1, 2, "1996-01-01", "1998-01-01" );
INSERT INTO ADVISOR_STUDENT_DATE (advisorID, studentID, startDate, endDate) VALUES (2, 1, "2000-01-01", NULL );
INSERT INTO ADVISOR_STUDENT_DATE (advisorID, studentID, startDate, endDate) VALUES (3, 3, "2000-01-01", NULL );

INSERT INTO ADVISOR_MENTOR_DATE (advisorID, mentorEmail, startDate, endDate) VALUES (1, "Andre.King@companyname.com", "1996-01-01", NULL);
INSERT INTO ADVISOR_MENTOR_DATE (advisorID, mentorEmail, startDate, endDate) VALUES (2, "Andre.King@companyname.com", "2000-01-01", NULL);
INSERT INTO ADVISOR_MENTOR_DATE (advisorID, mentorEmail, startDate, endDate) VALUES (3, "Andre.King@companyname.com", "2000-01-01", NULL);

INSERT INTO MENTOR_STUDENT_DATE (mentorEmail, studentID, startDate, endDate) VALUES ("Andre.King@companyname.com", 1, "2000-01-01", NULL);
INSERT INTO MENTOR_STUDENT_DATE (mentorEmail, studentID, startDate, endDate) VALUES ("Andre.King@companyname.com", 2, "2001-01-01", NULL);
INSERT INTO MENTOR_STUDENT_DATE (mentorEmail, studentID, startDate, endDate) VALUES ("Andre.King@companyname.com", 3, "2002-01-01", NULL);

INSERT INTO ALUMNI_HOME (alumniEmail, homeAddress, homeCity, homeState, homeZIP, homePhone) VALUES ("Anthony.Jaghab@somewhere.com", "414 Hunt Place", "West Hempstead", "NY", 11552, "516-555-5551");
INSERT INTO ALUMNI_HOME (alumniEmail, homeAddress, homeCity, homeState, homeZIP, homePhone) VALUES ("Jupraj.Singh@somewhere.com", "201 Valley Place", "West Hempstead", "NY", 11552, "516-555-5552");
INSERT INTO ALUMNI_HOME (alumniEmail, homeAddress, homeCity, homeState, homeZIP, homePhone) VALUES ("Andre.King@somewhere.com", "204 Strong Place", "West Hempstead", "NY", 11552, "516-555-5553");

INSERT INTO GRADUATION (studentID, studentDegree, dateEnrolled, dateGraduated) VALUES (1, "B.A Arts", "2000-01-01", NULL);
INSERT INTO GRADUATION (studentID, studentDegree, dateEnrolled, dateGraduated) VALUES (2, "B.A Comp. Programming", "2000-01-01", NULL );
INSERT INTO GRADUATION (studentID, studentDegree, dateEnrolled, dateGraduated) VALUES (3, "B.A Media", "2000-01-01", NULL);

INSERT INTO DEPARTMENT (advisorID, departmentName, officeBuildingName, officeRoom, officePhone) VALUES (1, "Art", "Hale", 1, "631-444-5551");
INSERT INTO DEPARTMENT (advisorID, departmentName, officeBuildingName, officeRoom, officePhone) VALUES (2, "Computer Systems", "Hale", 1, "631-243-3552");
INSERT INTO DEPARTMENT (advisorID, departmentName, officeBuildingName, officeRoom, officePhone) VALUES (3, "Art", "Media", 1, "631-144-1533");
