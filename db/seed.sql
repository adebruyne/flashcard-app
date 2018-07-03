INSERT INTO Decks
    (topic)
VALUES
    ('Concepts'),
    ('Technologies'),
    ('Algorithms')
;


INSERT INTO cards
    (topic, question, answer, imgUrl)
VALUES
    ('Concepts', 'Back-End Processing', 'It is like the ground beneath a city. Above ground are all the familiar sights – HTML houses, CSS cathedrals, Javascript office blocks. Beneath the ground are the utilities that make the city function smoothly – a labyrinthine network of web servers, applications, and databases.', 'https://content-static.upwork.com/blog/uploads/sites/3/2015/05/05110024/Back-end-dev-logo.png'),
    ('Concepts', 'Front-End Processing', 'It is like walking around a city. You interact with the front end
– the sidewalks, roads, shops, parks, and office blocks. What you do not see is the back end that keeps the city ticking – the power lines, gas pipes,sewers, and building foundations hidden underground.', 'https://www.classicinformatics.co.uk/wp-content/uploads/2013/04/ui-web-design-prosess1.jpg'),
    ('Concepts', 'Global Versus Local Scope', 'A variables scope is the range of the script where it is visible. Variables have either global or local scope. A global variable exists only once in a script, and is visible in every function. Modifications to it in one function are permanent and visible to all functions.', 'https://image.slidesharecdn.com/chapter4computerlanguage-151216104236/95/chapter-4-computer-language-15-638.jpg?cb=1450262567'),
    ('Concepts', 'Javascript Versus JQuery', 'JQuery is a library built on top of JavaScript.  Javascript is the ugly nerd and jQuery is the wizard who turns him into the handsome quarterback.', 'http://cdn.lucemorker.com/blog/wp-content/uploads/2014/02/table.jpg'),
    ('Concepts', 'Framework Versus A Library', 'You call library - a framework calls you.  A library is a tool. A framework is a way of life.', NULL),
    ('Concepts', 'What is an API?', 'Application Program Interface - like at a restaurant, when you order food (call API) from the menu (APIs). Once your food is ready (API response is ready), the waiter will serve you the food. The basic idea is you ask for what you want and the system returns you a response, without exposing what’s happening behind the scene.', 'https://23kri02j3rke414ynf4dgx2i-wpengine.netdna-ssl.com/wp-content/uploads/2015/09/API-EN.png'),
    ('Concepts', 'Describe Cloud Computing', 'It is like a library, not a book store. A simple way to access every book on the planet without having to own them all.', 'http://www.ajeasturiasnetworking.com/wp-content/uploads/2018/05/cloud-computing-network-diagram-download-benefits-and-challenges-of-virtualization-in-the-cloud-of-cloud-computing-network-diagram.jpg'),
    ('Concepts', 'What is Event Bubbling?', 'Event bubbling is a type of event propagation where the event first triggers on the innermost target element and then successively triggers on the parents of the target element in the same nesting hierarchy until it reaches the outermost DOM element or document object. Events are actions done by the user such as a button click, changing a field etc.', NULL),
    ('Concepts', 'What is a Server?', 'It is like a reservoir – a store of data for multiple users to download, via a browser rather than a tap. Like a reservoir, a server needs to be kept clean and healthy.', 'https://www.webdevelopersnotes.com/basics/model3.gif'),
    ('Concepts', 'Describe a Promise', 'It is like a normal promise. A person says they are going to do something in the future -- an operation that hasn not completed yet, but is expected in the future.', 'http://exploringjs.com/es6/images/promises----promise_states_all.jpg'),
    ('Technologies', 'Node.js', 'Node.js is a JavaScript runtime built on the Chrome V8 Javascript engine.  It uses an event-driven, non-blocking I/O model.  The Node.js package system, npm, is the largest of open-source libraries in the world.', 'https://nodejs.org/static/images/logos/nodejs-new-pantone-black.png'),
    ('Technologies', 'Object-Oriented Programming', 'A type of computer programming (software design) in which programmers define not only the data type of a data structure, but also the types of operations (functions) that can be applied to the data structure.  In this way, the data structure becomes an object that includes both data and functions. Programmers can create relationships between one object and another and objects can inherit characteristics from other objects.', 'https://content-static.upwork.com/blog/uploads/sites/3/2015/05/05193125/Intro-object-oriented-programming.png'),
    ('Technologies', 'PostgreSQL', 'PostgreSQL is a powerful, open source object-relational database system that uses and extends the SQL language combined with many features that safely store and scale the most complicated data workloads.', 'https://cdn-images-1.medium.com/max/800/1*7AOhGDnRL2eyJMUidCHZEA.jpeg'),
    ('Technologies', 'jQuery', 'A free and open source JavaScript library that is used by Web developers to navigate HTML documents, handle events, perform animations and add Ajax interactions to Web pages. jQuery was developed by John Resig.', 'https://cdn-images-1.medium.com/max/1600/0*g3ns8QALNBBH7CBA.'),
    ('Technologies', 'React.js', 'React (also known as React.js or ReactJS) is a JavaScript library for building user interfaces. It is maintained by Facebook and a community of individual developers and companies.', 'https://codemotion.ninja/wp-content/uploads/2016/12/react.jpg'),
    ('Technologies', 'Javascript', 'Javascript is a programming language developed by Netscape as a means to add dynamic and interactive elements to websites. JavaScript is a client-side scripting language, which means the source code is processed by the clients web browser rather than on the web server. JavaScript functions can run after a webpage has loaded without communicating with the server.', 'https://cdn-images-1.medium.com/max/1052/1*DN7ToydkJZEdVaJVK_Nhvw.png'),
    ('Technologies', 'AWS', 'Amazon Web Services (AWS) is a subsidiary of Amazon.com that provides on-demand cloud computing platforms to individuals, companies and governments, on a paid subscription basis. The technology allows subscribers to have at their disposal a virtual cluster of computers, available all the time, through the Internet.', 'https://s3-us-west-2.amazonaws.com/paubox-blog/blog/wp-content/uploads/2017/03/22113109/AWS-logo.png'),
    ('Technologies', 'JSON', 'Stands for "JavaScript Object Notation" and is a text-based data interchange format designed for transmitting structured data between web applications and web servers.  JSON is often viewed as an alternative to XML, another plain text data interchange format. The JSON representation of an object is more compact than the XML representation because it does not require tags for each element.', 'https://cdn-images-1.medium.com/max/512/1*BzD9VGIbTmQpANue7eC1Rw.png'),
    ('Technologies', 'CSS', 'Stands for Cascading Style Sheet. Cascading style sheets are used to format the layout of Web pages. They can be used to define text styles, table sizes, and other aspects of Web pages that previously could only be defined in in the HTML of a page.  CSS helps Web developers create a uniform look across several pages of a Web site.', 'https://content.linkedin.com/content/dam/me/learning/blog/2016/september/CSS.jpg'),
    ('Technologies', 'HTML', 'Stands for Hypertext Markup Language. HTML is the language used to create webpages. Hypertext refers to the hyperlinks that an HTML page may contain. Markup language refers to the way tags are used to define the page layout and elements within the page.', 'https://www.besthosting.com/wp-content/uploads/2016/06/HTML-Website.jpg'),
    ('Algorithms', 'Python Bubblesort', 'A simple sorting algorithm that repeatedly steps through the list to be sorted, compares each pair of adjacent items and swaps them if they are in the wrong order. The pass through the list is repeated until no swaps are needed, which indicates that the list is sorted', 'https://www.w3resource.com/w3r_images/bubble-short.png'),
    ('Algorithms', 'Find the First Unique Character In A String of Random Characters', 'Use a character as an index in a count array. Traverse the given string and store index of first occurrence of every character, also store count of occurrences. Then traverse the count array and find the smallest index with count as 1.', NULL),
    ('Algorithms', 'Sorting An Array', 'Given array of arrays, sort them in ascending order.', NULL),
 	('Algorithms', 'All Possibilities Function', 'Write a function that would return all the possible words generated when using a phone (pre-smartphone era) numpad to type.', NULL),
    ('Algorithms', 'Removing Duplicates', 'Remove duplicates in an unsorted array where the duplicates are at a distance of k or less from each other.', NULL),
    ('Algorithms', 'OOP', 'How would you design the data structures for a book keeping system for a library?', NULL),
    ('Algorithms', 'Concatenation Function', 'Write a function that finds all the different ways you can split up a word into a concatenation of two other words.', NULL),
    ('Algorithms', 'What is Big O Notation?', 'Primarily looks at how many operations a sorting algorithm takes to completely sort a very large collection of data. This is a measure of efficiency and is how you can directly compare one algorithm to another.', NULL),
    ('Algorithms', 'House Robber', 'You are a professional robber planning to rob houses along a street. Each house has a certain amount of money stashed, the only constraint stopping you from robbing each of them is that adjacent houses have security system connected and it will automatically contact the police if two adjacent houses were broken into on the same night. Given a list of non-negative integers representing the amount of money of each house, determine the maximum amount of money you can rob tonight without alerting the police.', NULL),
    ('Algorithms', 'Plus One', 'Given a non-empty array of digits representing a non-negative integer, plus one to the integer. The digits are stored such that the most significant digit is at the head of the list, and each element in the array contain a single digit. You may assume the integer does not contain any leading zero, except the number 0 itself.', NULL)
;


INSERT INTO Tests
    (isRight)
VALUES
    (true),
    (false),
    (false),
    (false),
    (true)
;