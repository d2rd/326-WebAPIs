var express = require('express');
var router = express.Router();
var sampleData = require('../snippets/sampleDataObject')

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.get('/businesses', function(req, res) {
  res.render('businesses', {
    title: 'MBE/DBE Businesses in Maryland',
    businessArray: sampleData
  });
});

//example from bookstore:
// router.get('/book/:id', (req, res) => {
//   const id = req.params.id
//   db.viewBook(id)
//   .then(books => {
//     res.render('bookdetail', { books: books})
//   } )
// })

router.get('/business-detail/:certification_number', function(req, res) {
  console.log("made it into certification number get");
  var {certification_number} = req.params
  console.log(certification_number, "certification number")
  var businessObjectData
  for (var i = 0; i < sampleData.length; i++) {
    if (sampleData[i].certification_number === certification_number) {
      businessObjectData = sampleData[i]
    }
  }
  res.render('business-detail', {
    businessObject: businessObjectData
  })

})

module.exports = router;
