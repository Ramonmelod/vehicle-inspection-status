import React from "react";
import useSWR from "swr";

async function fetchApi(key) {
  const response = await fetch(key);
  const data = response.json();
  return data;
}

const Dashboard = () => {
  return (
    <>
      <h1>Seta Dashboard</h1>
      <OsInformations />
    </>
  );
};

function OsInformations() {
  const { data, isLoading } = useSWR("/api/v1/os_status", fetchApi); //endpoint access without localhost text allowed by proxy property in package json
  let servicoNumeroText = "carregando...";
  let openDate = "carregando...";
  let licensePlate = "carregando...";
  if (!isLoading && data) {
    servicoNumeroText = data.recordsets[0][0].ServicoNumero;
    openDate = data.recordsets[0][0].AberturaDataHora;
    licensePlate = data.recordsets[0][0].Placa;
  }
  return (
    <>
      <div>
        Número Ordem de serviço: {JSON.stringify(servicoNumeroText, null, 2)}
      </div>
      <div>Data de abertura: {JSON.stringify(openDate, null, 2)}</div>
      <div>Placa: {JSON.stringify(licensePlate, null, 2)}</div>
    </>
  );
}

export default Dashboard;
