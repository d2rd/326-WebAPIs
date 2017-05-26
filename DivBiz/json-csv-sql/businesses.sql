--Use these queries to set up necessary postgres databases

-- create a database for table of businesses
DROP DATABASE IF EXISTS mbedata;
CREATE DATABASE mbedata;

-- within the mbeData database, create the businesses table:
CREATE TABLE businesses (
  id SERIAL PRIMARY KEY,
  certification_number TEXT,
  zip TEXT,
  products_services TEXT,
  naics_code TEXT,
  address TEXT,
  city TEXT,
  county TEXT,
  geocoded_location_latitude TEXT,
  geocoded_location_human_address TEXT,
  geocoded_location_needs_recoding TEXT,
  geocoded_location_longitude TEXT,
  minority_group TEXT,
  phone_phone_number TEXT,
  contact TEXT,
  name TEXT,
  state TEXT,
  fax_phone_number TEXT,
  certification_date TEXT,
  contact_email_address TEXT,
  website_url TEXT
)

-- copy the data from the CSV file into the businesses table:
COPY businesses (zip, products_services, naics_code, address, city, county, certification_number, geocoded_location_latitude, geocoded_location_human_address, geocoded_location_needs_recoding, geocoded_location_longitude, minority_group, phone_phone_number, contact, name, state, fax_phone_number, certification_date, contact_email_address, website_url
) FROM 'FULL PATH TO mbeDataJSONcoverted.csv HERE'
DELIMITER ',' CSV HEADER;

-- drop the columns for geocoded information:
ALTER TABLE businesses
DROP geocoded_location_latitude, DROP geocoded_location_human_address, DROP geocoded_location_needs_recoding, DROP geocoded_location_longitude;

-- create table for form submissions
CREATE TABLE submissions (
  id SERIAL PRIMARY KEY,
  certification_number TEXT,
  zip TEXT,
  products_services TEXT,
  naics_code TEXT,
  address TEXT,
  city TEXT,
  county TEXT,
  minority_group TEXT,
  phone_phone_number TEXT,
  contact TEXT,
  name TEXT,
  state TEXT,
  fax_phone_number TEXT,
  certification_date TEXT,
  contact_email_address TEXT,
  website_url TEXT
)
