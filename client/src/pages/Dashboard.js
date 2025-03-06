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
  let serviceNumberText = "carregando...";
  let licensePlateText = "carregando...";
  let openDateText = "carregando...";

  let finalizationText = "carregando...";
  let csvNameText = "carregando...";
  let status = "carregando...";

  if (!isLoading && data) {
    openDateText = data[0].openDate;
    serviceNumberText = data[0].serviceNumber;
    licensePlateText = data[0].licensePlate;

    finalizationText = data[0].finalization;
    csvNameText = data[0].TipoCsvSerproNome;
    status = data[0].status;
  }
  return (
    <>
      <div>
        Número Ordem de serviço: {JSON.stringify(serviceNumberText, null, 2)}
      </div>
      <div>Data de abertura: {JSON.stringify(openDateText, null, 2)}</div>
      <div>Placa: {JSON.stringify(licensePlateText, null, 2)}</div>
      <div>finalização: {JSON.stringify(finalizationText, null, 2)}</div>
      <div>Escopo: {JSON.stringify(csvNameText, null, 2)}</div>
      <div>Status: {JSON.stringify(status, null, 2)}</div>
    </>
  );
}

export default Dashboard;
//os: serviconumero
//placa
//abertura:aberturadatahora
//finalizacao:csvemitidodatahora
//escopo:TipoCsvNome
//status
