const sql = require("mssql");

const dotenv = require("dotenv");
dotenv.config({ path: ".env.development" }); // here is used the .env.development file, but the production shel use the .env file

const database = async (queryObject) => {
  try {
    await sql.connect(
      `Server=${process.env.HOST},1400;Database=${process.env.SQLSERVERDATABASE};User Id=${process.env.SQLSERVERUSER};Password=${process.env.SQLSERVERPASSWORD};Encrypt=false`
    );
    const result = await sql.query(queryObject);
    return result;
  } catch (error) {
    console.log(error);
  }
};

module.exports = { database };
