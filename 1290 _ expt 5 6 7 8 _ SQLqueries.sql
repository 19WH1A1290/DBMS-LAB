DROP DATABASE IF EXISTS 19WH1A1290;

CREATE schema 19WH1A1290;

USE 19WH1A1290;


CREATE TABLE Bus(bus_no VARCHAR(20), Sourc VARCHAR(20), destination VARCHAR(20), bcolour VARCHAR(20));

INSERT INTO Bus VALUES('12301','Chennai','Banglore','yellow');

INSERT INTO Bus VALUES('12302','Hyderabad','Khammam','red');

INSERT INTO Bus VALUES('12303','Amaravati','Rajahmandry','blue');

INSERT INTO Bus VALUES('12304','Kadapa','Guntur','blue');

INSERT INTO Bus VALUES('12304','Vijayawada','Kurnool','green');

SELECT * FROM Bus;

DELETE FROM Bus B WHERE B.Sourc = 'Hyderabad';

SELECT * FROM Bus;

CREATE TABLE Passenger(P_name VARCHAR(20), P_id INT, Gender VARCHAR(20), age INT, P_destination VARCHAR(20));
INSERT INTO Passenger VALUES('Abhishek', 1201, 'Male', 38, 'Hyderabad');

INSERT INTO Passenger VALUES('Purab', 1211, 'Male', 40, 'Guntur');

INSERT INTO Passenger VALUES('Keerthi', 1290, 'Female', 56, 'Hyderabad');

INSERT INTO Passenger VALUES('Tejaswini', 1243, 'Female', 67, 'Hyderabad');
INSERT INTO Passenger VALUES('Srilaxmi', 1205, 'Female', 42, 'Tirupati');

INSERT INTO Passenger VALUES('Pragya', 1274, 'Male', 22, 'Amaravati');

INSERT INTO Passenger VALUES('azai', 1323, 'Female', 20, 'Kurnool');

INSERT INTO Passenger VALUES('ivarr', 1234, 'Female', 43, 'Amaravati');

INSERT INTO Passenger VALUES('kanchi', 1284, 'male', 47, 'Banglore');

SELECT * FROM Passenger;

DELETE FROM Passenger P WHERE P.age=50;

SELECT * FROM Passenger;

CREATE TABLE Ticket(T_id INT, T_cost INT, destination VARCHAR(20), seatno VARCHAR(20), P_id INT);

INSERT INTO Ticket VALUES(120, 240, 'Vizag', 'L12', 1201);

INSERT INTO Ticket VALUES(121, 290, 'Hyderabad', 'L67', 1211);

INSERT INTO Ticket VALUES(122, 200, 'Vizag', 'L42', 1290);

INSERT INTO Ticket VALUES(123, 700, 'Hyderabad', 'L52', 1243);

INSERT INTO Ticket VALUES(124, 240, 'Hyderabad', 'L53', 1205);

INSERT INTO Ticket VALUES(125, 570, 'Hyderabad', 'R19', 1274);

INSERT INTO Ticket VALUES(126, 830, 'Banglore', 'L21', 1323);

INSERT INTO Ticket VALUES(127, 700, 'Karnataka', 'L17', 1234);

INSERT INTO Ticket VALUES(128, 560, 'Bhadrachalam', 'R12', 1284);

SELECT * FROM Ticket;

DELETE FROM Ticket T WHERE T_id = 123;

SELECT * FROM Ticket;

ALTER TABLE Ticket ADD COLUMN seats INT;

SELECT * FROM Ticket;

UPDATE Ticket T SET T.T_cost = T_cost + 10;

SELECT * FROM Ticket;

SELECT DISTINCT P.P_id FROM Passenger P ;

SELECT P.p_name FROM Passenger P WHERE P.gender = 'Male';

SELECT T.T_id, P.P_name FROM Ticket T, Passenger P WHERE P.P_id = T.P_id;

SELECT T.T_id FROM Ticket T ,Passenger P WHERE P.P_name LIKE 'R%h' AND P.P_id = T.P_id ;

SELECT P.P_name FROM Passenger P WHERE  P.age >= 30 AND  P.age <= 45;

SELECT P.P_name FROM Passenger P WHERE P.P_name LIKE 'A%';

SELECT P.P_name FROM Passenger P ORDER BY P_name ASC;


CREATE TABLE Cancelltion(C_id INT, P_id INT, seatno VARCHAR(20),C_name VARCHAR(20));

INSERT INTO Cancelltion VALUES(1, 1201, 'L12', 'Abhishek');

INSERT INTO Cancelltion VALUES(2, 1211, 'L67', 'Purab');

INSERT INTO Cancelltion VALUES(3, 1290, 'L42', 'Keerthi');

SELECT * FROM Passenger P UNUION SELECT * FROM Cancelltion C;

ALTER TABLE Bus ADD COLUMN N_Days INT;

SELECT * FROM Bus B;

UPDATE Bus B SET N_Days = 5 WHERE B_no = "12301";

UPDATE Bus B SET N_Days = 5 WHERE B_no = "12302";

UPDATE Bus B SET N_Days = 5 WHERE B_no = "12303";