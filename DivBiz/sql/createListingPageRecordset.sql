DROP TABLE IF EXISTS listingPage;
SELECT * INTO listingPage FROM 

jsonb_to_recordset('[ {
   "name" : "03 TECHNOLOGIES, LLC",
   "naics_code" : "20743",
  "zip" : "16-346";
  
 
}]') as x(Name text, NAICS int, Zip text);