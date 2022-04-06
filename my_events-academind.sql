-- @block
CREATE TABLE events(
id INT PRIMARY KEY AUTO_INCREMENT,
-- id SERIAL PRIMARY KEY,
name VARCHAR(300) NOT NULL CHECK(LENGTH(name)>5),
date_planned TIMESTAMP NOT NULL,
image VARCHAR(300),
description TEXT NOT NULL,
max_participants INT CHECK(max_participants>0),
min_age INT CHECK(min_age>0)
);

-- @block
INSERT INTO events(
name,
date_planned,
description,
max_participants,
min_age
)
VALUES
(
'A first event',
'2022-10-29 16:30:00',
'This is a description of the first event',
20,
18
),
(
'A second event',
'2022-10-30 17:30:00',
'This is a description of the second event',
30,
12
);

-- @BLOCK
SELECT * FROM events;

-- @BLOCK
UPDATE events
SET min_age = 16
WHERE id = 1;

-- @BLOCK
CREATE TABLE locations(
id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(300),
street VARCHAR(300) NOT NULL,
house_number VARCHAR(10) NOT NULL,
postal_code VARCHAR(5) NOT NULL

);