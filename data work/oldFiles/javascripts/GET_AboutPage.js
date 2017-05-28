// This script accepts a website url from a row in the MBEmain
//table, navigates to the site and returns the contents of theAbout page.
//
//PSEUDO CODE
//get url from row in MBEmain.
//Search for header with title containing "ABOUT"
//Traverse the DOM to its parent div.
//Retrieve the entire div and its contents and store it in the database.
// format the contents by taking the first 5 lines of the article body and hiding the rest as a collapsible block.