const fs = require("fs");
const { Pool } = require('pg');

const connectionString = "postgres://mqkrztoq:voFrsE80nlniDMD22Q1dQO8z15EvWhVI@lallah.db.elephantsql.com/mqkrztoq";

const pool = new Pool({
  connectionString: connectionString,
});

pool.connect()
  .then(() => {
    console.log('Database connection established');
  })
  .catch((err) => {
    console.error('Error connecting to the database:', err);
  });

module.exports = {
  query: (text, params) => pool.query(text, params),
};
