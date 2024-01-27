const { Pool } = require('pg');

const pool = new Pool({
  user: 'vcollector',
  host: 'video-collector-db-instance.c9sasqeu213c.us-east-1.rds.amazonaws.com',
  database: 'videocollectordb',
  password: 'vcollector1234',
  port: 5432,
  ssl:{
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
