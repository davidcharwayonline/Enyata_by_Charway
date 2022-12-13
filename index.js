const express = require('express')
const bodyParser = require('body-parser')
const app = express()
var request = require("request"); //requiring request module
const db = require('./queries')
const port = 3000


app.use(bodyParser.json())
app.use(
  bodyParser.urlencoded({
    extended: true,
  })
)

//Index page JSON return
app.get('/', (request, response) => {
   

    response.json({ info: 'Node.js, Express, and Postgres API by David Charway',

    Main_file_URL: 'http://localhost:3000/',
    List_all_Incidents: 'http://localhost:3000/enyata_by_charway/incidents',
    List_all_Incidents_per_ID: 'http://localhost:3000/enyata_by_charway/incidents/{id}',

Developed_By: 'David Charway'})

    
  })


  

//Render JSON request and responses of main app
  app.get('/enyata_by_charway/incidents', db.getIncidents)
  app.get('/enyata_by_charway/incidents/:id', db.getIncidentsById)
  app.post('/enyata_by_charway/incidents', db.createIncidents)

  //send with curl 
  //curl -X POST -d 'client_id=00116' -d 'incident_desc=With CURL 1' -d 'city=AccraAPI' -d 'country=GhanaAPI' http://localhost:3000/enyata_by_charway/incidents
  
  app.listen(port, () => {
    console.log(`App running on port ${port}.`)
  })


