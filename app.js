const express = require('express');
const app = express();

const bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({ extended: false }));

const expressHbs = require('express-handlebars');
app.engine('.hbs', expressHbs({defaultLayout: 'layout', extname: '.hbs'}));
app.set('view engine', '.hbs');

const static = express.static;
app.use(static('public'));







//Testing connection has been made to server
app.get('/', () => {
    console.log('TEST');
})




app.listen(3000, () => {
    console.log('Server started on port 3000');
  });