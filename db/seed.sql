insert into decks
	(topic)
values
	('concepts'),
	('languages'),
	('algorithms')
;


insert into cards
    (topic, question, answer, imgUrl)
values
    ('concepts', 'Describe backend processing', 'It’s like the ground beneath a city. Above ground are all the familiar sights – HTML houses, CSS cathedrals, Javascript office blocks. Beneath the ground are the utilities that make the city function smoothly – a labyrinthine network of web servers, applications, and databases.', NULL),
    ('languages', 'Node.js', $$Node.js is a JavaScript runtime built on Chrome's V8 Javascript engine.  It uses an event-driven, non-blocking I/O model.  Node.js's package system, npm, is the largest of open-source libraries in the world.$$, 'https://nodejs.org/static/images/logos/nodejs-new-pantone-black.png'),
    ('algorithms', 'Bubblesort', 'A simple sorting algorithm that repeatedly steps through the list to be sorted, compares each pair of adjacent items and swaps them if they are in the wrong order. The pass through the list is repeated until no swaps are needed, which indicates that the list is sorted', 'https://www.w3resource.com/w3r_images/bubble-short.png')
;


insert into tests
	(isRight)
values
	(true)
;