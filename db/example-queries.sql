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


-- change question and/or answer - TBD
-- update Cards
-- where topic is languages
-- set
-- 	question='Describe backend processing.',
-- 	answer='whiteboard this concept'
-- where id=1;  --how will I know what id this question is????

-- search by topic, should have 0 results - TBD
-- select * from Cards
-- where question ilike '%ttttttt%';

-- search by topic, should have 1 result - TBD
-- select * from Cards
-- where question ilike '%Node.js%';

-- delete by id - TBD
-- delete from Cards where id=6;

