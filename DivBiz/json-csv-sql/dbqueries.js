var pgp = require('pg-promise')()
var connectionString = 'postgres://localhost:5432/mbedata'
var db = pgp(connectionString)

const listBusinesses = () => {
  return db.any(`
    SELECT
      *
    FROM
      businesses
  `)
}

const addBusiness = (business) => {
  return db.one(`
    INSERT INTO
      submissions (zip, products_services, naics_code, address, city, county, certification_number, minority_group, phone_phone_number, contact, name, state, fax_phone_number, certification_date, contact_email_address, website_url)
    VALUES
      ($/zip/, $/products_services/, $/naics_code/, $/address/, $/city/, $/county/, $/certification_number/, $/minority_group/, $/phone_phone_number/, $/contact/, $/name/, $/state/, $/fax_phone_number/, $/certification_date/, $/contact_email_address/, $/website_url/)
    RETURNING
      *
  `, business )
}

module.exports = {
  listBusinesses, addBusiness
}
