DROP DATABASE IF EXISTS 19WH1A1290;
CREATE schema 19WH1A1290;
USE 19WH1A1290;
CREATE TABLE passenger (pid INT, name VARCHAR(50), age INT, gender CHAR, address VARCHAR(20), phn_no INT);
INSERT INTO passenger (sid, name , age , gender , address, phn_no)VALUES(100290, 'ramesh', 45, 'M', 'Guntur', '90009000900');
INSERT INTO passenger VALUES('100291', 'suresh', 46, 'M', 'vijaywada', '90009100900');
INSERT INTO passenger VALUES('100292', 'tina', 23, 'F', 'Udaypur', '92009100900');
SELECT * FROM passenger;

CREATE TABLE bus(bus_no int4, source char(30), destination char(30), type char(5));
show tables;
insert into bus values(245, 'hyderabad', 'Guntur', 'nonac');
insert into bus values(564, 'hyderabad', 'Vijaywada', 'ac');
insert into bus values(624, 'hyderabad', 'Amaravathi', 'ac');
select * from bus;

CREATE TABLE ticket(ticket_num int, from_place VARCHAR(20), destiny VARCHAR(20),bid int);
INSERT INTO ticket VALUES(1,'hyderabad','tirupathi',1);
INSERT INTO ticket VALUES(2,'tirupati','karimnagar',3);
INSERT INTO ticket VALUES(3,'hyderabad','vizag',2);
select * FROM ticket;