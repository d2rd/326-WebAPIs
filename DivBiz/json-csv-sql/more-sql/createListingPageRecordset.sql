DROP TABLE IF EXISTS listingPage;
SELECT * INTO listingPage FROM 

jsonb_to_recordset('[ {
  "zip" : "20743",
  "products_services" : "INDUSTRIAL LAUNDERERS SPECIFICALLY PROFESSIONAL LAUNDRY SERVICE TO LUXURY HOTELS",
  "naics_code" : "812332-MBE/DBE/SBE",
  "address" : "1030 HAMPTON PARK BLVD. SUITE 100",
  "city" : "CAPITOL HEIGHTS",
  "county" : "PRINCE GEORGE",
  "certification_number" : "16-346"
  
 
}]') AS x(Zip text, Products_Services text, naics_code text, address text, city text, county text, certification_number text);