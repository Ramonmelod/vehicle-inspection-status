import React from "react";
import useSWR from "swr";

async function fetchApi(key) {
  const response = await fetch(key);
  const data = response.json();
  return data;
}

const Dashboard = () => {
  const response = useSWR("/api/v1/os_status", fetchApi); //endpoint access without localhost text allowed by proxy property in package json
  return (
    <>
      <h1>Seta Dashboard</h1>
      <pre>{JSON.stringify(response.data, null, 2)}</pre>
    </>
  );
};

export default Dashboard;
