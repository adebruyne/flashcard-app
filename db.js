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

//  showAllCards(1)
//   .then(function(data){
//     //success 
//     console.log(data);  
//   })
//   .catch(function(error){
//     //error;
//     console.log(error);
//   })

// //ADD
 


// function addDeck {

// }

// //CHECK IF ANSWER IS RIGHT WRONG
// function setRightWrong {
  
// }




 module.exports = {
   showOneDeck,
   showAllDecks,
   showAllCards,
//   addDeck,
//   addCard,
//   setRightWrong,
//   // deleteDeck,
//   // deleteCard,
//   // updateDeck,
//   // updateCard
 };
