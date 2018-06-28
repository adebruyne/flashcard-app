-- database name is flashcards

DROP TABLE IF EXISTS Decks;

-- create db flashcards;

CREATE TABLE Decks(
    deck_id SERIAL UNIQUE PRIMARY KEY,
    topic VARCHAR(300)
);

CREATE TABLE Cards(
    card_id SERIAL UNIQUE PRIMARY KEY,
    topic VARCHAR (300),
    question TEXT,
    answer TEXT,
    imgURL VARCHAR (2083),
    isRight BOOLEAN
);

CREATE TABLE Sessions(
    session_id SERIAL UNIQUE PRIMARY KEY,
    row_created_ TIMESTAMP WITH TIME ZONE
);



-- for later - adding in user login authentication
-- CREATE TABLE users (
--   id SERIAL UNIQUE PRIMARY KEY,
--   email VARCHAR (225),
--   password_digest TEXT,
--   user_name (VARCHAR 50)
-- )

-- from node-connect-pg-simple https://github.com/voxpelli/node-connect-pg-simple/blob/master/table.sql
-- code for adding the feature of timing a session (i.e. quizing)
-- CREATE TABLE "session" (
--   "sid" varchar NOT NULL COLLATE "default",
--   "sess" json NOT NULL,
--   "expire" timestamp(6) NOT NULL
-- )

-- WITH (OIDS=FALSE);
-- ALTER TABLE "session" ADD CONSTRAINT "session_pkey" PRIMARY KEY ("sid") NOT DEFERRABLE INITIALLY IMMEDIATE;