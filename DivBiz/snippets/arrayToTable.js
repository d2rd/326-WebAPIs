//  pg-promise setup
var pgp = require('pg-promise')()
var connectionString = 'postgres://localhost:5432/bookstore'
var db = pgp(connectionString)


//psuedocode for insertion

//ethans code for??
const db = require('../db')

const CREATE = `
  INSERT INTO events (certification_number, name, zip, products_services,address,phone.phone_number)
  VALUES ( $1, $2, $3, now(), now() )
  RETURNING *
`
const FOR_REQUEST = `SELECT * FROM events WHERE request_id=$1 ORDER BY created_at ASC`

module.exports = {
  create: (request_id, data, event_name) => db.one(CREATE, [request_id, data, event_name]),
  forRequest: request_id => db.any(FOR_REQUEST, request_id)
}

//********* */

const db = require('file that configures pg-promises')

//populate is defined above

const sampleDataObject = require('sampleDataObject')

sampleDataObject.map(business => {
      const name = business.name
      db.populate(name)
    }