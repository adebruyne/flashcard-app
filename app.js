
//IMPORT EXPRESS 
const express = require('express');
const app = express();


//IMPORT body-parser
const bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({ extended: false }));

//IMPORT db.js
const flashcard = require('./db')

//IMPORT handlebars
const expressHbs = require('express-handlebars');
app.engine('.hbs', expressHbs({defaultLayout: 'layout', extname: '.hbs'}));
app.set('view engine', '.hbs');

//USE Public folder for styles
const static = express.static;
app.use(static('public'));




/////////////////////////ROUTE TO HOMEPAGE
app.get('/', (req,res) => {
    res.render('homepage')
})


/////////////////////////ROUTE TO ALL THE DECKS
app.get('/deck', (req,res) => {
    //get all the decks
    flashcard.showAllDecks()
        .then((data) => {
        //    res.send(data);
        res.render('decks-page', {
            decks: data
        })
        })
        .catch((error) => {console.log(error);});
    
    
    
});




//////////////////////////ROUTE TO ADD NEW DECK
app.get('/newdeck', (req, res) => {
    // res.send('new-deck-page')
    //Show a form for a new deck
    res.render('new-deck-page')
}) 
app.post('/newdeck', (req, res) => {
    console.log(req.body);
    // res.send('You submitted a new deck!')
    flashcard.addDeck(req.body.topic)
        .then((data) => {
            // console.log(data);
            // res.send(data);
            res.redirect('/deck');
        })
        .catch((error) => {console.log(error);
        })
})


/////////////////////////////DELETE DECK
app.get('/delete/:deckid', (req,res) => {
    flashcard.showAllDecks()
      
        .then((data) => {
        //    res.send(data);
        res.render('delete-deck-page', {
            decks: data
        })
        })
        .catch((error) => {console.log(error);});

    //get one deck
   //delete entire deck   
})
app.post('/delete/:deckid', (req, res) => {
    
})



////////////////////////////ROUTE TO INDIVIDUAL DECK
app.get('/deck/:deckid', (req,res) => {
    flashcard.showAllCards(req.params.deckid)
        .then((data) => {
             console.log(data)
            //  res.send(req.params.deck_id)
         res.render('deck-detail-page', {cards: data})
         })
        .catch((error) => {console.log(error);
     })
   
    //get all the cards for one deck
});


///////////////////////////ROUTE TO ADD A NEW CARD
app.get('/deck/:deckid/newcard', (req,res) => {
    
    // res.send("You want a new card!")
    //Show a form for a new card
    res.render('new-card-page')
})

app.post('/deck/:deckid/newcard', (req ,res) => {
    // res.send('You submited the form')
    //add the 'question', 'answer', 'image' as a new card into the deck
    // / res.redirect('/deck/:deckid');
    
    let deck_id = req.params.deckid;
    let topic = req.params.topic;
    let question = req.body.question;
    let answer = req.body.answer;
    let imgUrl =  req.body.imgUrl;
     flashcard.addCard(deck_id, topic, question, answer, imgUrl)
         .then((data) => {
         console.log(data)
        //  res.send(data);
        res.redirect(`/deck/${data.deckid}`);
     })
        .catch((error) => {console.log(error);
     })
})




/////////////////////////////ROUTE TO TEST QUESTION
app.get('/deck/:deckid/test/:cardid', (req,res) => {
    //get one card from specific deck
    // res.send('You got to answer this')
    res.render('test-page')
})


//DELETE CARD
app.get('/deck/:deckid/:cardid'), (req,res) => {
    //get one card from specific deck 
    //delete the card

}






app.listen( 3000, () => {
    console.log('You have a happy server!')
})






