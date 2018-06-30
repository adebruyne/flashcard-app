--DECKS++++++++++++++++

-- get all the decks
SELECT * FROM Decks;


-- get one deck by id
SELECT * FROM Decks WHERE deck_id=2;


-- add new deck
INSERT INTO Decks
	(topic)
VALUES
	('acronyms')


--CARDS++++++++++++++++


-- get all the cards
SELECT * FROM Cards WHERE deck_id=1;


-- get one card by id
SELECT card_id=3 FROM Cards WHERE deck_id=2;


-- answer is correct
UPDATE Tests
SET isRight=true
WHERE tests_id=1;


-- answer is wrong
UPDATE Tests
SET isRight=false
WHERE tests_id=2;


-- add a card
INSERT INTO Cards
	(topic, question, answer, imgUrl)
VALUES
	('algorithms', 'Implement a Fibonacci Number Calculator', NULL, 'https://cdn-images-1.medium.com/max/800/1*pvfDpHBsI1suLSOYR2cO3g.png')

