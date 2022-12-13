//Database intialization and connection
const Pool = require('pg').Pool
const pool = new Pool({
  user: 'davidcharway',
  host: 'localhost',
  database: 'insurance_clients',
  password: 'password',
  port: 5432,
})

const { Client } = require('pg');

const client = new Client({
    host: 'localhost',
    user: 'davidcharway',
    database: 'insurance_clients',
    password: 'password',
    port: 5432,
});

//Get all incidents
const getIncidents = (request, response) => {
    pool.query('SELECT * FROM incidents ORDER BY id ASC', (error, results) => {
      if (error) {
        throw error
      }
      response.status(200).json(results.rows)
    })
  }

//Get incident by ID
  const getIncidentsById = (request, response) => {
    const id = parseInt(request.params.id)
  
    pool.query('SELECT * FROM incidents WHERE id = $1', [id], (error, results) => {
      if (error) {
        throw error
      }
      response.status(200).json(results.rows)
    })
  }

  const createIncidents = (request, response) => {
    const { client_id, incident_desc, city, country } = request.body
  
    pool.query('INSERT INTO incidents (client_id, incident_desc, city, country) VALUES ($1, $2, $3, $4) RETURNING *', [client_id, incident_desc, city, country], (error, results) => {
      if (error) {
        throw error
      }
      else{
      response.status(201).send(`Incident reported with ID: ${results.rows[0].id}`)

     var checkid = results.rows[0].id;

     const updateUser = async (weather_report, id) => {
        const query = `UPDATE "incidents" 
                       SET "weather_report" = $1
                       WHERE "id" = $2`;
        try {
            await client.connect();          // gets connection
            await client.query(query, [weather_report, id]); // sends queries
            return true;
        } catch (error) {
            console.error(error.stack);
            return false;
        } finally {
            await client.end();              // closes connection
        }
    };

    //get weather data and stores it in the POST entry
    var request = require('request');
    var url = "https://api.openweathermap.org/data/2.5/weather?lat=7.94571943181024&lon=-1.2027645624959014&appid=e1b8c522698e28be5d152a4a45efbcce";
    request(url, function (error, response, body) {
      if (!error && response.statusCode == 200) {
      curTemp = JSON.parse(body);  //
        JsonContent = JSON.stringify(curTemp);
        console.log(JsonContent);
        updateUser(JsonContent, checkid).then(result => {
            if (result) {
                console.log('Weather report updated');
            }
        });
      }
     
    })

  

      }
     

    })

  }



module.exports = {
    getIncidentsById,
    createIncidents,
    getIncidents,
  }