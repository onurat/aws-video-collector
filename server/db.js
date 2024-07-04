const { Pool } = require('pg');

const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
  ssl: {
    rejectUnauthorized: false, 
  },
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
