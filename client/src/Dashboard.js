import React from "react";
import useSWR from "swr";

async function query() {
  const response = await fetch("http://localhost:8080/api/v1/os_status");
  const data = response.json();
  return data;
}

const Dashboard = () => {
  const response = useSWR("query", query);
  return (
    <>
      <h1>Seta Dashboard</h1>
      <pre>{JSON.stringify(response.data)}</pre>
    </>
  );
};

export default Dashboard;
