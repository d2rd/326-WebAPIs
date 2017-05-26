DROP TABLE IF EXISTS detailsPage;
SELECT * INTO detailsPage FROM 

jsonb_to_recordset('[ {
   "zip" : "20723",
  "products_services" : "ADMINISTRATIVE MANAGEMENT AND GENERAL MANAGEMENT CONSULTING SERVICES MARKETING CONSULTING SERVICES SPECIFICALLY MARKETING MANAGEMENT SERVICES PROCESS PHYSICAL DISTRIBUTION AND LOGISTICS CONSULTING SERVICES SPECIFICALLY OPERATIONS RESEARCH CONSULTING SERVICES",
  "naics_code" : "541611-MBE/DBE/SBE, 541613-MBE/DBE/SBE, 541614-MBE/DBE/SBE",
  "website" : {
    "url" : "http://WWW.4SIGHTSTRATEGY.COM"
  },
  "address" : "8507 ICE CRYSTAL DRIVE",
  "city" : "LAUREL",
  "county" : "HOWARD",
  "certification_number" : "16-343",
  "geocoded_location" : {
    "latitude" : "39.14208",
    "human_address" : "{\"address\":\"8507 ICE CRYSTAL DRIVE\",\"city\":\"LAUREL\",\"state\":\"MD\",\"zip\":\"20723\"}",
    "needs_recoding" : false,
    "longitude" : "-76.902406"
  },
  "minority_group" : "AFRICAN AMERICAN / FEMALE",
  "phone" : {
    "phone_number" : "6086929235"
  },
  "contact" : "ALICE NTAMBI",
  "contact_email_address" : "4SIGHTSTRATEGY@GMAIL.COM",
  "name" : "4SIGHT STRATEGY GROUP, LLC",
  "state" : "MD",
  "certification_date" : "2016-07-08T00:00:00"
}
, {
  "zip" : "21211",
  "products_services" : "ENGINEERING SERVICES SPECIFICALLY CIVIL ENGINEERING SERVICES ENVIRONMENTAL ENGINEERING SERVICES OTHER MANAGEMENT CONSULTING SERVICES SPECIFICALLY UTILITIES MANAGEMENT CONSULTING SERVICES",
  "naics_code" : "541330-MBE-ONLY, 541618-MBE-ONLY",
  "website" : {
    "url" : "http://WWW.FOURTENETS.COM"
  },
  "address" : "3600 CLIPPER MILL ROAD",
  "city" : "BALTIMORE",
  "county" : "BALTIMORE CITY",
  "certification_number" : "16-407",
  "geocoded_location" : {
    "latitude" : "39.330639",
    "human_address" : "{\"address\":\"3600 CLIPPER MILL ROAD\",\"city\":\"BALTIMORE\",\"state\":\"MD\",\"zip\":\"21211\"}",
    "needs_recoding" : false,
    "longitude" : "-76.641207"
  },
  "minority_group" : "ASIAN AMERICAN PACIFIC",
  "phone" : {
    "phone_number" : "4438039567"
  },
  "contact" : "JAY SAKAI",
  "contact_email_address" : "JAYSAKAI@FOURTENETS.COM",
  "name" : "4TENETS CONSULTING, LLC",
  "state" : "MD",
  "certification_date" : "2016-08-03T00:00:00"
}
, {
  "zip" : "19124",
  "products_services" : "SERVICE ESTABLISHMENT EQUIPMENT AND SUPPLIES MERCHANT WHOLESALERS OTHER CHEMICAL AND ALLIED PRODUCTS MERCHANT WHOLESALERS",
  "naics_code" : "423850-MBE-ONLY, 424690-MBE-ONLY",
  "website" : {
    "url" : "http://WWW.503CORP.COM"
  },
  "address" : "5019 MULBERRY STREET",
  "city" : "PHILADELPHIA",
  "county" : "OTHER STATE",
  "certification_number" : "13-423",
  "geocoded_location" : {
    "latitude" : "40.018505",
    "human_address" : "{\"address\":\"5019 MULBERRY STREET\",\"city\":\"PHILADELPHIA\",\"state\":\"PA\",\"zip\":\"19124\"}",
    "needs_recoding" : false,
    "longitude" : "-75.075726"
  },
  "minority_group" : "HISPANIC AMERICAN",
  "phone" : {
    "phone_number" : "2155353100"
  },
  "contact" : "MARIO ZACHARJASZ",
  "contact_email_address" : "MARIO@503CORP.COM",
  "name" : "503 CORPORATION",
  "state" : "PA",
  "fax" : {
    "phone_number" : "2155353106"
  },
  "certification_date" : "2013-09-13T00:00:00"
  
 
}]') AS x(name text, contact text, phone_number text, contact_email_address text, minority_group text, naics_code text, address text, city text, county text, Zip text, certification_number text, certification_date text, Products_Services text);