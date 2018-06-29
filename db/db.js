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


<<<<<<< HEAD

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

 function showOneCard (card_id) {
   return db.oneOrNone(`SELECT * FROM Cards WHERE card_id=$1`,[card_id])
 }




// function showAllCards {

// }


// //ADD
// function addCard {

// }


// function addDeck {

// }

// //CHECK IF ANSWER IS RIGHT WRONG
// function setRightWrong {
  
// }




 module.exports = {
   showOneDeck,
   showAllDecks,
//   showOneCard,
//   showAllCards,
//   addDeck,
//   addCard,
//   setRightWrong,
//   // deleteDeck,
//   // deleteCard,
//   // updateDeck,
//   // updateCard
 };
=======
>>>>>>> dd7563ba0d75354d42a6a769a05d3b3f5b1f98c2
