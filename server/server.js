const express = require("express");
const { Router } = require("express");
const { database } = require("../infra/database.js");
const app = express();
const apiRouter = Router();
const porta = 3000;
const localHost = "localhost";

const queryObject = "SELECT TOP 4 * FROM dbo.serviconumerico"; // "SELECT * FROM dbo.serviconumerico;";

app.use(express.json());

app.use("/api/v1/os_status", apiRouter);

app.get("/", (req, res) => {
  res.status(200).send("Bem-vindo à API!");
});

apiRouter.get("/", async (req, res) => {
  const result = await database(queryObject);
  res.type("text/plain");
  res.status(200).send(result); //result.recordsets
});

app.listen(porta, localHost, () => {
  console.log("Servidor Rodando!");
});
