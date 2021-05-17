-- creating table, adding data and showing data

DROP DATABASE elections;
CREATE DATABASE elections;
USE elections;

CREATE TABLE state(
state_id Int,
state_name VARCHAR(25),
headquarters VARCHAR(25),
PRIMARY KEY(state_id)
);

CREATE TABLE election_commision_office(
office_id INT,
state_id INT,
FirstName  VARCHAR(50),
LastName  VARCHAR(40),
Street VARCHAR(50),
City VARCHAR(50),
areacode INT(2),
number INT(7),
PRIMARY KEY(office_id),
FOREIGN KEY(state_id) REFERENCES state(state_id)
);

CREATE TABLE polling_station(
station_id INT,
state_id INT,
Street VARCHAR(50),
City VARCHAR(50),
State VARCHAR(50),
Zip INT(10),
PRIMARY KEY(station_id),
FOREIGN  KEY(state_id) REFERENCES state(state_id)
);


CREATE TABLE party(
party_id INT,
state_id INT,
party_name  VARCHAR(30),
PRIMARY KEY (party_id),
FOREIGN  KEY(state_id) REFERENCES state(state_id)
);


CREATE TABLE candidate(
candidate_id INT,
party_id INT,
FirstName varchar(50),
LastName varchar(50),
dob date,
PRIMARY KEY(candidate_id),
FOREIGN KEY(party_id) REFERENCES party(party_id)
);

CREATE TABLE voter(
voter_id INT,
station_id INT,
candidate_id INT,
FirstName varchar(50),
LastName varchar(50),
PRIMARY KEY(voter_id),
FOREIGN KEY(station_id) REFERENCES polling_station(station_id)
);

INSERT INTO state VALUES (1,'Telangana', 'Hyderabad');
INSERT INTO state VALUES (2,'Andhra', 'Vishakapatnam');
INSERT INTO state VALUES (3,'Kerala', 'Kochin');
INSERT INTO state VALUES (4,'Tamil Nadu', 'Chennai');
INSERT INTO state VALUES (5,'Karnataka', 'Bangalore');
INSERT INTO state VALUES (6,'Orissa', 'Bhuvaneshwar');

INSERT INTO election_commision_office VALUES (17,1,'Raj','Charan', '7th East','Hyderabad', 81, 78767654);
INSERT INTO election_commision_office VALUES (26,2, 'Venkata','Subbaiah', '13th North','Vishakapatnam', 76, 76567678);
INSERT INTO election_commision_office VALUES (30,3,'Oman','Chandy', '9th East','Kochin', 87, 56765676);
INSERT INTO election_commision_office VALUES (40,4, 'M','Krishnan', '10 West','Chennai', 88, 67876787);
INSERT INTO election_commision_office VALUES (10,5,'Gali','Yadyurappa', '5th East','Bangalore', 89, 98767898);
INSERT INTO election_commision_office VALUES (20,6,'Raja','Harish', '7th North', 'Bhuvaneshwar',90, 67898765);

INSERT INTO polling_station VALUES (123,1, '12th East', 'Hyderabad','Telangana',200991);
INSERT INTO polling_station VALUES (121,2,'10th West', 'Vishakapatnam','Andhra',203191);
INSERT INTO polling_station VALUES (124,3,'5th West', 'Kochin','Kerala',203191);
INSERT INTO polling_station VALUES (125,4,'1 North', 'Chennai','Tamil Nadu',203191);
INSERT INTO polling_station VALUES (126,5,'9 West', 'Bangalore','Karnataka',203191);
INSERT INTO polling_station VALUES (120,6,'10th South', 'Bhuvaneshwar','Orissa',203191);
INSERT INTO polling_station VALUES (122,3,'15th West', 'Vishakapatnam','Andhra',203191);

INSERT INTO voter VALUES (324542,123,7,'Raju','Mandhapuram');
INSERT INTO voter VALUES (324667, 121,8,'Naveen','Polishetty');
INSERT INTO voter VALUES (326564,124,9,'Naveen','Tanuku');
INSERT INTO voter VALUES (341567, 125,10,'Sanjay','Saripalli');
INSERT INTO voter VALUES (324552,123,7,'Samba','Singam');
INSERT INTO voter VALUES (314657, 121,8,'Roy','Raj');
INSERT INTO voter VALUES (316554,124,9,'Chandu','Tinu');
INSERT INTO voter VALUES (311557, 125,10,'Ravi','Tej');
INSERT INTO voter VALUES (314512,126,8,'Seenu','Siddapa');
INSERT INTO voter VALUES (314617, 121,9,'Badri','Kullu');
INSERT INTO voter VALUES (316514,124,7,'Dil','Ravi');
INSERT INTO voter VALUES (311517, 125,7,'Parikkar','Sanjay');

INSERT INTO party VALUES (2345,1,'BTP');
INSERT INTO party VALUES (2346,2,'CTC');
INSERT INTO party VALUES (2347,3, 'TDR');
INSERT INTO party VALUES (2348,4, 'INS');

INSERT INTO candidate VALUES (7,2345,'Karanam', 'Malli', '1970-04-03');
INSERT INTO candidate VALUES (9,2346,'Ram', 'Swethu', '1977-06-02');
INSERT INTO candidate VALUES (8,2346,'Bujji', 'Malli', '1987-04-06');
INSERT INTO candidate VALUES (10,2346,'Kutti', 'Yaari', '1966-01-01');

select * from state;
select * from election_commision_office;
select * from polling_station;
select * from voter;
select * from party;
select * from candidate;
