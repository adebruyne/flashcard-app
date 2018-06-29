--DECKS++++++++++++++++

-- get all the decks
select * from Decks;

-- get one deck by id
select * from Decks where id=2;

-- delete by id
-- TBD

-- add new deck
-- TBD


--CARDS++++++++++++++++

-- get all the cards
select * from Cards;

-- get one card by id
select * from Cards where id=8;

-- answer is correct
update Cards
set isRight=true
where id=1;


-- answer is wrong
update Cards
set isRight=false
where id=2;

-- change question and/or answer
update Cards
where topic is languages
set
	question='Describe backend processing.',
	answer='whiteboard this concept'
where id=1;  --how will I know what id this question is????

-- search by topic, should have 0 results
select * from Cards
where question ilike '%ttttttt%';

-- search by topic, should have 1 result
select * from Cards
where question ilike '%Node.js%';

-- delete by id
delete from Cards where id=6;

-- add a card
insert into Cards
	(topic, question, answer, imgUrl, isRight)
values
	('algorithms', 'Implement a Fibonacci Number Calculator', NULL, 'https://cdn-images-1.medium.com/max/800/1*pvfDpHBsI1suLSOYR2cO3g.png', NULL)

