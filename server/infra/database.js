const sql = require("mssql");

const dotenv = require("dotenv");
dotenv.config({ path: "./server/.env.development" }); // here is used the .env.development file, but the production shel use the .env file

const sqlConfig = {
  user: process.env.SQLSERVERUSER,
  password: process.env.SQLSERVERPASSWORD,
  database: process.env.SQLSERVERDATABASE,
  server: process.env.HOST,
  port: 1400,
  pool: {
    max: 10,
    min: 0,
    idleTimeoutMillis: 30000,
  },
  options: {
    encrypt: false, // for azure
    trustServerCertificate: false, // change to true for local dev / self-signed certs
  },
};

async function database(queryObject) {
  try {
    // make sure that any items are correctly URL encoded in the connection string
    await sql.connect(sqlConfig);
    const result = await sql.query(queryObject);
    return result;
  } catch (error) {
    console.log(error);
  }
}

module.exports = { database };
