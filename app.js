const express = require('express');
const app = express();

const bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({ extended: false }));

const expressHbs = require('express-handlebars');
app.engine('.hbs', expressHbs({defaultLayout: 'layout', extname: '.hbs'}));
app.set('view engine', '.hbs');

const static = express.static;
app.use(static('public'));

const pg = require('pg');

//ROUTE TO HOMEPAGE
app.get('/', (req,res) => {
    res.render('homepage')
    //get all the decks
});


//ROUTE TO INDIVIDUAL DECK
app.get('/deck/:deckid', (req,res) => {
    res.render('deck-detail-page')
    //get all the cards for one deck
});






app.listen( 3000, () => {
    console.log('You have a happy server!')
})