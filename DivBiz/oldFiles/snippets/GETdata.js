$.ajax({
  url: "https://data.maryland.gov/resource/ik8a-xmt5.json",
  type: "GET",
  data: {
    "$limit": 5,
    "$$app_token": "YOURAPPTOKENHERE"
  }
}).done(function(data) {
  alert("Retrieved " + data.length + " records from the dataset!");
  console.log(data);
});


// VERSION 2.0
// https://data.maryland.gov/resource/viap-eh6m.json