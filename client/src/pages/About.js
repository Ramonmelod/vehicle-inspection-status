import React from "react";
import { Link } from "react-router-dom";

const About = () => {
  return (
    <div>
      <h1>Sobre</h1>
      <p1>
        Este é um projeto de painel para acompanhamento de pedidos <br></br>
      </p1>
      <Link to="/">retornar a página inicial</Link>
    </div>
  );
};

export default About;
