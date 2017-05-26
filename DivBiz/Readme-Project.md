Project:  
Team:  Glenn-David and Rhonda Smith

We created a directory of Minority Business Enterprises/Disadvantaged Business Enterprises in the state of Maryland using sample data from the Maryland government. There is a directory of those businesses and a submission form to submit businesses that may be missing from the directory. Follow these instructions to get it to work in your browser:

1.  npm install to install dependencies
2.  in the json-csv-sql folder, follow the directions in businesses.sql to set up the database
3.  nodemon to start the server

Concept
  1. Fetch data from Dta.md.gov and data.gov using CKANAPI
	2. Parse JSON Object(s)
	3. Display JSON objects as cards in HTML (using Handlebars.js)
	4. Create simple UI to control the view and demonstrate functionality

Dataset
	Minority Business Enterprise: Statewide Directory - MBE, DBE (Disadvantaged Business Enterprise), SBE (Small Business Enterprise), and ACDBE (Airport Concession Disadvantaged Enterprise) Certified Businesses
		MBE, DBE (Disadvantaged Business Enterprise), SBE (Small Business Enterprise) and ACDBE (Airport Concession Disadvantaged Enterprise) certified businesses are all shown. This dataset contains a list of businesses certified by Minority Business Enterprise (MBE) within the state of Maryland. This program is affiliated with the Maryland Department of Transportation (MDOT)

		Data are continually updated at MDOT's website for MBE: https://mbe.mdot.maryland.gov/directory/search_select.asp. This dataset was created on Jan. 14 2016 and therefore shows all businesses certified as of that date. The Department of Information Technology (DoIT) will update this dataset using MDOT's source data, at least once per month moving forward. If you have questions about the dataset or data please contact service.desk@maryland.gov.

Access & Use Information
	Access dataset using this link: https://data.maryland.gov/resource/ik8a-xmt5.json

	Public: This dataset is intended for public access and use.

	Non-Federal: This dataset is covered by different Terms of Use than Data.gov.

	License: No license information was provided.


Technologies Investigated/Utilized
	pg-promises
	Handlebars.js
	Express.js
	Node.js
