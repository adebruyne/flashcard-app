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
});


//ROUTE TO INDIVIDUAL DECK
app.get('/deck/:deckid', (req,res) => {
    res.send("This is the first deck set!")
});




app.listen( 3000, () => {
    console.log('You have a happy server!')
})