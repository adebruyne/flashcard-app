-- database name is flashcards

DROP TABLE IF EXISTS Sessions;
DROP TABLE IF EXISTS Tests;
DROP TABLE IF EXISTS Cards;
DROP TABLE IF EXISTS Decks;

-- create db flashcards;

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

SELECT COUNT(tests.isright) as answerCount,
    cards.*
FROM 
    Cards
LEFT JOIN
    Tests ON tests.card_id=cards.card_id
WHERE
    cards.deck_id=1  
GROUP BY 
	cards.card_id
ORDER BY
	cards.card_id