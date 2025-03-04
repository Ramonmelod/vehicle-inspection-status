import React from "react";
import Routes from "./routes";

async function query() {
  const response = await fetch("http://localhost:8080/api/v1/os_status");
  const data = response.json();
  return data;
}

export default function App() {
  console.log(query());
  return (
    <>
      <Routes />
    </>
  );
}
