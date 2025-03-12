const express = require("express");
const { Router } = require("express");
const { database } = require("./infra/database.js");
const { InternalServerError } = require("./infra/errors.js");
const cors = require("cors"); // cors add to enable crossed requisitions
const app = express();
const apiRouter = Router();
const port = 8080;
const localHost = "localhost";

const queryObject =
  "SELECT serviconumero, placa, aberturadatahora,csvemitidodatahora,TipoCsvSerproNome,  status FROM serviconumerico;"; //"select * from dbo.serviconumerico;"
app.use(cors());

app.use("/api/v1/os_status", apiRouter);

app.get("/", (req, res) => {
  res.status(200).send("Bem-vindo à API!");
});

apiRouter.get("/", async (req, res) => {
  try {
    const result = await database(queryObject);
    res.type("text/plain");

    let data = [];

    for (datarow in result?.recordset) {
      data.push({
        openDate: result?.recordset[datarow].aberturadatahora, //the ? garanty that recordset will be ignored if it is undefined
        serviceNumber: result?.recordset[datarow].serviconumero,
        licensePlate: result?.recordset[datarow].placa,

        finalization: result?.recordset[datarow].csvemitidodatahora,
        TipoCsvSerproNome: result?.recordset[datarow].TipoCsvSerproNome,
        status: result?.recordset[datarow].status,
      });
    }

    res.status(200).send(data);
  } catch (error) {
    const publicErrorObject = new InternalServerError({ cause: error });
    console.error(publicErrorObject);
    res.status(500).json(publicErrorObject);
  }
});
app.listen(port, localHost, () => {
  console.log(
    `Server running on port: ${port}. \n\nYou may access it with the command below: \n\ncurl -s http://localhost:8080/api/v1/os_status`
  );
});
