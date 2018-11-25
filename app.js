var express = require('express');
var app = express();

app.get('/', function (req, res) {
  res.send('Hello World Oracle Cloud Native Application with Heejong and Sangdeuk');
});

app.listen(3000, function () {
  console.log('Example app listening on port 3000!');
});