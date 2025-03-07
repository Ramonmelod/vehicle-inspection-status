const express = require("express");
const { Router } = require("express");
const { database } = require("./infra/database.js");
const cors = require("cors"); // cors add to enable crossed requisitions
const app = express();
const apiRouter = Router();
const porta = 8080;
const localHost = "localhost";

const queryObject =
  "SELECT serviconumero, placa, aberturadatahora,csvemitidodatahora,TipoCsvSerproNome,  status FROM serviconumerico;"; //"select * from dbo.serviconumerico;"
app.use(cors());

app.use("/api/v1/os_status", apiRouter);

app.get("/", (req, res) => {
  res.status(200).send("Bem-vindo à API!");
});

apiRouter.get("/", async (req, res) => {
  const result = await database(queryObject);
  res.type("text/plain");

  let data = [];

  for (datarow in result.recordset) {
    data.push({
      openDate: result.recordset[datarow].aberturadatahora,
      serviceNumber: result.recordset[datarow].serviconumero,
      licensePlate: result.recordset[datarow].placa,

      finalization: result.recordset[datarow].csvemitidodatahora,
      TipoCsvSerproNome: result.recordset[datarow].TipoCsvSerproNome,
      status: result.recordset[datarow].status,
    });
  }

  res.status(200).send(data);
});
app.listen(porta, localHost, () => {
  console.log("Servidor Rodando!");
});
