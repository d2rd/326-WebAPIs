var express = require('express');
var router = express.Router();
var sampleData = require('../json-csv-sql/sampleDataObject')
var db = require('../json-csv-sql/dbqueries.js');

router.get('/', function(req, res, next) {
  res.render('index', { title: 'MBE/DBE Businesses in Maryland' });
});


router.get('/businesses', function(req, res) {
  db.listBusinesses()
  .then(businesses => {
    res.render('businesses', { title: 'MBE/DBE Businesses in Maryland', businesses: businesses });
  }).catch(error => {
    res.render(error)
  })
});

router.get('/business-detail/:certification_number', function(req, res) {
  console.log("in here")
  var {certification_number} = req.params
  var businessObjectData
  for (var i = 0; i < sampleData.length; i++) {
    if (sampleData[i].certification_number === certification_number) {
      businessObjectData = sampleData[i]
    }
  }
  res.render('business-detail', {
    businessObject: businessObjectData
  })
});

router.get('/addBusiness', (req, res, next) => {
  res.render('addBusiness');
});

router.post('/addBusiness', (req, res) => {
  let business = req.body
  db.addBusiness(business)
  .then(() =>
  res.redirect('/thankYou'))
  .catch(error => {
    res.status(500).render('error', {
      error: error,
      message: error.message,
    })
  })
})

router.get('/thankYou', (req, res, next) => {
  res.render('thankYou')
});

module.exports = router;
