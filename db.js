//DEPENDENCIES
const pg = require('pg');
const pgp = require('pg-promise')();

//ENVIRONMENTAL VARIABLES
const cn = {
  host: 'localhost',
  port: 5432,
  database: 'flashcards',
  user: 'postgres',
  password: ''
};
const db = pgp(cn);



//SHOW
function showOneDeck(deck_id) {
  return db.oneOrNone('SELECT * FROM Decks where deck_id= $1', [deck_id])
}

// showOneDeck(2)
//   .then(function(data){
//     //success 
//     console.log(data);  
//   })
//   .catch(function(error){
//     //error;
//     console.log(error);
//   })


function showAllDecks() {
  return db.any(`SELECT * FROM Decks`)
}

// showAllDecks()
//   .then((data) => {console.log(data);})
//   .catch((error) => {console.log(error);});


function showAllCards(deck_id) {
  return db.any('SELECT * FROM Cards WHERE deck_id=$1', [deck_id])
}

// showAllCards(1)
// .then(function(data){
//   //success
//   console.log(data);  
// })
// .catch(function(error){
//   //error;
//   console.log(error);
// })


//ADD
function addCard(deck_id, topic, question, answer, imgUrl) {
  return db.one("INSERT INTO Cards (deck_id, topic, question, answer, imgUrl) VALUES ($1, '$1#', '$2#', '$3#', '$4#') returning card_id", [deck_id, topic, question, answer, imgUrl])
}

// addCard(2, 'algorithms', 'Implement a Fibonacci Number Calculator', 'see diagram', 'https://cdn-images-1.medium.com/max/800/1*pvfDpHBsI1suLSOYR2cO3g.png')
//   .then(function(data){
//     //success
//     console.log(data);  
//   })
//   .catch(function(error){
//     //error;
//     console.log(error);
//   });


function addDeck(topic) {
  return db.one("INSERT INTO Decks(topic) VALUES('$1#') returning deck_id", [topic])
}

// addDeck('biology')
//   .then(function(data){
//     //success
//     console.log(data);  
//   })
//   .catch(function(error){
//     //error;
//     console.log(error);
//   });


//CHECK IF ANSWER IS RIGHT WRONG
function setTest(card_id, isRight) {
  return db.query("INSERT INTO Tests(card_id, isRight) VALUES($1, $2)", [card_id, isRight])
}

setTest(4, false)
  .then(function(data){
    //success
    console.log(data);  
  })
  .catch(function(error){
    //error;
    console.log(error);
  });


//DELETE TESTS
function deleteTests() {
  return db.result("DELETE FROM Tests");
}

// deleteTests()
//   .then((data) => {console.log(data);})
//   .catch((error) => {console.log(error);});



module.exports = {
  showOneDeck,
  showAllDecks,
  showAllCards,
  addDeck,
  addCard,
  setTest,
  deleteTests,
  // updateIsRight
    // deleteDeck,
    // deleteCard,
    // updateDeck,
    // updateCard

};
