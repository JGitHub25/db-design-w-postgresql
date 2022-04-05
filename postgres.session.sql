-- @block
CREATE TABLE films (name TEXT, release_year INTEGER);

-- @block
INSERT INTO films 
VALUES 
('The Matrix', 1999), 
('The Matrix Reloaded', 2003), 
('The Matrix Revolutions', 2003), 
('Monsters, Inc.', 2001), 
('Call me by your name', 2017);


-- @block
ALTER TABLE films 
ADD COLUMN rating FLOAT(1);

-- @block
ALTER TABLE films ADD box_office BIGINT;

-- @block
ALTER TABLE films ADD category TEXT;

-- @block
UPDATE films 
SET rating = 8.5, category= 'Science fiction' 
WHERE name = 'The Matrix';

-- @block
UPDATE films 
SET rating = 7.9, category= 'Animation' 
WHERE name = 'Monsters, Inc.';

-- @block
UPDATE films 
SET rating = 8.7, category= 'Science fiction' 
WHERE name = 'The Matrix Reloaded';

-- @block
UPDATE films 
SET box_office = 1000538000000 
WHERE name = 'The Matrix'; 

-- @block
UPDATE films 
SET box_office = 2340538000 
WHERE name = 'Call me by your name';


-- @block
ALTER TABLE films
ADD CONSTRAINT name_unq UNIQUE(name);

-- @block
INSERT INTO films 
VALUES 
('The Matrix 2', 2008);

-- @block
UPDATE films 
SET name = 'The Matrix 2' 
WHERE name = 'Call me by your name';


-- @block
SELECT * FROM films;

