const express = require("express");
const { Router } = require("express");
const { database } = require("./infra/database.js");
const app = express();
const apiRouter = Router();
const porta = 3000;
const localHost = "localhost";

const queryObject = "SELECT * FROM usuarios;";

app.use(express.json());

// Importa as rotas definidas no apiRouter
app.use("/api", apiRouter); // Aqui, todas as rotas do apiRouter serão acessíveis através do prefixo "/api"

// Rota padrão
app.get("/", async (req, res) => {
  const result = await database(queryObject);
  res.type("text/plain");
  res.status(200).send(result);
});

apiRouter.get("/", (req, res) => {
  res.status(200).send("Bem-vindo à API!");
});

app.listen(porta, localHost, () => {
  console.log("Servidor Rodando!");
});
