var express = require('express');
var app = express();

// app.get('/', function (req, res) {
    // res.send('Hello World!');
// });

app.use(express.static('./build/unbundled/'));

app.listen(80, function () {
    console.log('Example app listening on port 80');
});