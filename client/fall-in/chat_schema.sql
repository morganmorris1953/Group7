DROP TABLE IF EXISTS user;
CREATE TABLE user (
  id           serial PRIMARY KEY,
  first_name   varchar(255) NOT NULL,
  last_name   varchar(255) NOT NULL,
  email     varchar(255) NOT NULL,
  city  varchar(255),
  country   varchar(255),
  urgency   VARCHAR(50), --low, medium, high
  needs   --medical, passports, transportion, money, information
  details of user
);

DROP TABLE IF EXISTS org_user;
CREATE TABLE org_user (
  id           serial PRIMARY KEY,
  first_name   varchar(255) NOT NULL,
  last_name   varchar(255) NOT NULL,
  email     varchar(255) NOT NULL,
  password      VARCHAR(255) not null,
  org_id    integer 
  FOREIGN KEY REFERENCES organization (id)
);

DROP TABLE IF EXISTS organization;
CREATE TABLE organization (
  id           serial PRIMARY KEY,
  name   varchar(255) NOT NULL,
  assistance_type   VARCHAR(255),
  user_name     VARCHAR(255),
  password      VARCHAR(255)
);

DROP TABLE IF EXISTS chatroom;
CREATE TABLE chatroom (
  id           serial PRIMARY KEY,
  org_user_id     integer foreign key references org_user(id),
  user_email     integer foreign key references user(email),
  password      VARCHAR(255) not null
);

DROP TABLE IF EXISTS message;
CREATE TABLE message (
  id           serial PRIMARY KEY,
  org_user_id integer foreign key references org_user(id),
  chatroom_id   integer foreign key references chatroom(id)
  body          VARCHAR(1024),
);

DROP TABLE IF EXISTS response;
CREATE TABLE response (
  id           serial PRIMARY KEY,
  user_id     integer foreign key references user(id),
  message_id    integer foreign key references message(id),
  body     integer VARCHAR(1024)
);



-- organization -->DWB, non-profits, HFH, TF Argos, etc. organization gets access from our team--can create org_user accounts
-- org_user -->(able to access user and create chatroom/message);  org_user gets access from organization--username and password
-- -- (adds afghan user info but doesnt provide relief) working_group => vetted_admins => vetted_user --> adds afghan user information; needs to be added to the group from another trusted person; account approved by admins in each group;
-- afghan user --> can only receive message from org_user and respond to that message