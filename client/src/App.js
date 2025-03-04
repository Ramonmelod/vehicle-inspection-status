import React from "react";
import Routes from "./routes";
import useSWR from "swr";

async function query() {
  const response = await fetch("http://localhost:8080/api/v1/os_status");
  const data = response.json();
  return data;
}

export default function App() {
  const response = useSWR("query", query);

  return (
    <>
      <Routes />
      <pre>{JSON.stringify(response.data)}</pre>
    </>
  );
}
