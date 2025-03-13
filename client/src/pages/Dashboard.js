import React from "react";

import OsInformations from "../components/OsInformations/OsInformations.js";

const Dashboard = () => {
  return (
    <>
      <img
        src="logo-grupo-seta.jpg"
        alt="Logo"
        width="200"
        style={{ position: "relative", left: "12%", top: "12vh" }}
      />
      <h1
        className="title"
        style={{
          color: "black",
          position: "relative",
          left: "42%",
          top: "8vh",
        }}
      >
        <span
          style={{
            color: "black",
            position: "relative",
          }}
        >
          Seta
        </span>{" "}
        <span
          style={{
            color: "#b21418",
            position: "relative",
          }}
        >
          Teresina
        </span>
      </h1>
      <OsInformations />
    </>
  );
};

export default Dashboard;
