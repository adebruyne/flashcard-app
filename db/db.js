//DEPENDENCIES
const pg = require('pg');
const pgp = require('pg-promise')();

//ENVIRONMENTAL VARIABLES
const cn = {
  host: 'localhost',
  port: 3000,
  database: 'flashcards',
  user: 'postgres',
  password: ''
};
const db = pgp(cn);



//SHOW
function showOneDeck {

}

function showAllDecks {

}

function showOneCard {

}

function showAllCards {

}


//ADD
function addCard {

}


function addDeck {

}

//CHECK IF ANSWER IS RIGHT WRONG
function setRightWrong {
  
}




module.exports = {
  showOneDeck,
  showAllDecks,
  showOneCard,
  showAllCards,
  addDeck,
  addCard,
  setRightWrong,
  // deleteDeck,
  // deleteCard,
  // updateDeck,
  // updateCard
};
