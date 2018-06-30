-- database is flashcards

CREATE TABLE Sessions(
    session_id SERIAL UNIQUE PRIMARY KEY,
    sessiondate TIMESTAMP
);

CREATE TABLE Decks(
    deck_id SERIAL UNIQUE PRIMARY KEY,
    topic VARCHAR(300)
);

CREATE TABLE Cards(
    card_id SERIAL UNIQUE PRIMARY KEY,
    deck_id INTEGER REFERENCES Decks(deck_id),
    topic VARCHAR (300),
    question TEXT,
    answer TEXT,
    imgURL VARCHAR (2083)
);

CREATE TABLE Tests(
    card_id INTEGER REFERENCES Cards(card_id),
    isRight BOOLEAN
);