
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
    // console.log(req.body);
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
    flashcard.showAllDecks(req.params.deckid)
      
        .then((data) => {
        //    res.send(data);
        res.render('delete-deck-page', {
            deckid: req.params.deckid
        })
        })
        .catch((error) => {console.log(error);});

    //get one deck
   //delete entire deck   
})
app.post('/delete/:deckid', (req, res) => {
    let deckid = req.body.deckid
    // console.log(deckid)
    flashcard.deleteADeck(deckid) 
        .then((data) => {
             res.redirect('/deck')
            // console.log(data)
        })
        .catch((error) => {console.log(error);
        })
        
})


////////////////////////////ROUTE TO INDIVIDUAL DECK
app.get('/deck/:deckid', (req,res) => {
    flashcard.showAllCards(req.params.deckid)
        .then((data) => {
             console.log(data)
            //  res.send(req.params.deck_id)
         res.render('deck-detail-page',
          {cards: data,
            deck_id: req.params.deckid
        })
         })
        .catch((error) => {console.log(error);
     })
   
    //get all the cards for one deck
});


///////////////////////////ROUTE TO ADD A NEW CARD
app.get('/deck/:deckid/newcard', (req,res) => {
    flashcard.showOneDeck(req.params.deckid)
        .then((data) => {
            console.log(data)
            res.render('new-card-page',
            {deckid: data.deck_id})
     })
     .catch((error) => {console.log(error);
    })
    // res.send("You want a new card!")
    //Show a form for a new card
    
})

app.post('/deck/:deckid/newcard', (req ,res) => {
    // res.send('You submited the form')
    //add the 'question', 'answer', 'image' as a new card into the deck
    // res.redirect('/deck/:deckid');  
    let deck_id = req.params.deckid;
    
    let question = req.body.question;
    let answer = req.body.answer;
    let imgUrl =  req.body.imgUrl;
   
   
    flashcard.showOneDeck(deck_id)
        .then((deck) => {
            let topic = deck.topic

            flashcard.addCard(deck_id, topic, question, answer, imgUrl)
            .then((data) => {
                console.log(data)
           //   res.send(data);
           res.redirect(`/deck/${deck_id}`);
        })
           .catch((error) => {console.log(error);
        })
    })
     
})

///////////////////////////////////DELETE CARD
app.get('/delete/card/:cardid', (req,res) => {
    // res.send('This is the delete card page')
    let card_id = req.params.cardid
    flashcard.showOneCard(card_id)
        .then((data) => {
            res.render('delete-card-page',
                data)
        })
        .catch((error) =>  console.log(error))
    //get one card from specific deck 
    //delete the card

})
app.post('/delete/card/:cardid', (req,res) => {
    // res.send('You deleted it!')
    let card_id = req.params.cardid
    flashcard.deleteACard(card_id)
        .then((data) => {
            
            res.redirect(`/deck/${req.body.deckid}`)
        })
})


/////////////////////////////ROUTE TO TEST QUESTION
app.get('/deck/:deckid/test', (req,res) => {
    //get all cards
    flashcard.getCardwithAnswers(req.params.deckid)
    .then((data) => { 
        console.log(data)
        // res.send(data)
        let isFound = false;
        for(let i=0; i<data.length; i++){
            let card = data[i];
            console.log(card);
            if(card.answercount === '0' && !isFound){
                isFound = true;
                return res.render('test-page', 
                 card)
            }
           
        }
        if(!isFound){
          res.redirect('/results');  
        }
         
    })
    .catch((error) => console.log(error))
 })      

 app.post('/deck/:deckid/test', (req,res) => {
    console.log(req.body)
    let card_id = req.body.card_id;
    let isRight = req.body.isRight;
    //save results to the tests table
    flashcard.setTest(card_id, isRight)
    .then((data) =>{
        res.redirect(`/deck/${req.params.deckid}/test`); 
    })
   
})  




///////////////////////ROUTE TO RESULTS
app.get('/results', (req, res) => {
    // res.send("The results!")
    flashcard.showAllResults()
    .then((data) => {
        console.log(data)

        let totalNumber = data.length;
        let totalRight = 0;
        for(let i=0; i<totalNumber; i++){
            if(data[i].isright){
                totalRight = totalRight + 1;
            }
        }

        res.render('results-page', 
        {totalNumber,
        totalRight})

    })
    
    .catch((error) => console.log(error))
})

app.post('/results',(req,res))






app.listen( 3000, () => {
    console.log('You have a happy server!')
})






