const { Pool } = require('pg');

const pool = new Pool({
  user: 'mqkrztoq',
  host: 'lallah.db.elephantsql.com',
  database: 'mqkrztoq',
  password: 'your_password',
  port: 5432,
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
