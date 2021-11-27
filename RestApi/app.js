const express = require('express');
const apiRouter = require('./server/routes')
const bodyParser = require('body-parser')
const app = express();


app.use(bodyParser.json());
app.use(express.json());
app.use('/api/posts', apiRouter);


app.listen(process.env.PORT || '3000', () => {
    console.log('Server ON')
});