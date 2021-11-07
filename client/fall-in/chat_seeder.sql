CREATE TABLE user (
  id           serial PRIMARY KEY,
  first_name   varchar(255) NOT NULL,
  last_name   varchar(255) NOT NULL,
  email     varchar(255) NOT NULL
  city  varchar(255),
  country   varchar(255),
  urgency   VARCHAR(50), --low, medium, high
  needs   --medical, passports, transportion, money, information
  details of user
);

INSERT INTO user (id, first_name, last_name, email, city, country, urgency, needs, details) VALUES (1, 'Tyrian', 'Lannister', 'drink_and_know_things@gmail.com', 'Kabul', 'Afghanistan', 'low', 'legal', 'wife Sansa needs documentation for American citizenship');
INSERT INTO user (id, first_name, last_name, email, city, country, urgency, needs, details) VALUES (1, 'Jon', 'Snow', 'i_know_nothing@aol.com', 'Mazar', 'Afghanistan', 'high', 'medical', 'recently stabbed to death by subordinates');



INSERT INTO org_user (id, first_name, last_name, email, password, org_id) VALUES (1, 'Daenerys ', 'Targaryen', 'dragNmum@gmail.com', 'breakerofchains3', 1);
INSERT INTO org_user (id, first_name, last_name, email, password, org_id) VALUES (1, 'Melissandre ', 'Red', 'lordoflight17@netscape.com', 'healer17', 1);



INSERT INTO organization (id, name, assistance_type, user_name, password) VALUES (1, 'The Sparrows', 'fundraising', 'highsparrow7' 'FAITHofthe7');
INSERT INTO organization (id, name, assistance_type, user_name, password) VALUES (1, 'Lord Of Light', 'medical', 'admin' 'password');



INSERT INTO chatroom (id, org_user_id, user_email, password) VALUES (1, 1, 'drink_and_know_things@gmail.com', 'smallbutstrong89');
INSERT INTO chatroom (id, org_user_id, user_email, password) VALUES (1, 1, 'i_know_nothing@aol.com', 'whitewalker');



INSERT INTO message (id, user_id, body, chatroom_id) VALUES (1, 1, 1, '');
INSERT INTO message (id, user_id, body, chatroom_id) VALUES (2, 2, 2, '');



INSERT INTO response (id, org_user_id, body, chatroom_id) VALUES (1, 1, 1, '');
INSERT INTO response (id, org_user_id, body, chatroom_id) VALUES (2, 2, 2, '');






-- Because we've inserted rows with hardcoded values for the primary key, id
-- the sequence used to generate id values for new rows is stuck at "1". So
-- we manually reset the sequences to the max value of id for each table.
SELECT setval('customers_id_seq', (SELECT MAX(id) FROM customers));
