--DECKS++++++++++++++++

-- get all the decks
select * from Decks;

-- get one deck by id
select * from Decks where id=2;



--CARDS++++++++++++++++

-- get all the cards in a deck - ???

-- get one card by id


-- get all pending todos
select * from todos where isDone=false;

-- get all finished todos
select * from todos
where isDone=true;

-- search by title, should have 0 results
select * from todos
where title ilike '%zzzzzzzzz%';

-- search by title, should have 1 result
select * from todos
where title ilike '%scoop%';


-- "uncheck" a todo
update todos
set isDone=false
where id=1;

-- "check" a todo
update todos
set isDone=true
where id=2;

-- change title
update todos
set title='cook amazing dinner'
where id=3;

-- change title and isDone
update todos
set
	title='cook the most amazing dinner evarr',
	isDone=true
where id=3;

-- delete by id
delete from todos where id=3;

-- delete all finished todos
delete from todos
where isDone=true;
