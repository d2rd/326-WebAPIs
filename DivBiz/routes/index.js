var express = require('express');
var router = express.Router();
var sampleData = require('../snippets/sampleDataObject')

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.get('/businesses', function(req, res) {
  console.log(sampleData)
  res.render('businesses', { title: 'Businesses'});
});

module.exports = router;
