import React from "react";

import OsInformations from "../components/OsInformations/OsInformations.js";

const Dashboard = () => {
  return (
    <>
      <h1 className="title">
        <span style={{ color: "black" }}>Seta</span>{" "}
        <span style={{ color: "#b21418" }}>Teresina</span>
      </h1>
      <img
        src="logo-grupo-seta.jpg"
        alt="Logo"
        width="200"
        style={{ position: "relative", left: "15%", top: "15%" }}
      />
      <OsInformations />
    </>
  );
};

export default Dashboard;
