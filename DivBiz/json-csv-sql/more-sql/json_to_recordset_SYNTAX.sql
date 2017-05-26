SELECT * FROM 

json_to_recordset('[ {
  "zip" : "20743",
  "certification_number" : "16-346",
  
  "name" : "03 TECHNOLOGIES, LLC"
}]') as x(zip int, certification_number text, name text);