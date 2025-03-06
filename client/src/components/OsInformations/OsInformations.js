import useSWR from "swr";
import "./OsInformations.css";

async function fetchApi(key) {
  const response = await fetch(key);
  const data = response.json();
  return data;
}

export default function OsInformations() {
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
      {isLoading ? (
        <p>Carregando informações...</p>
      ) : (
        <table className="os-table">
          <thead>
            <tr>
              <th>OS</th>
              <th>Placa</th>
              <th>Abertura</th>
              <th>Finalização</th>
              <th>Escopo</th>
              <th>Status</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>{serviceNumberText}</td>
              <td>{licensePlateText}</td>
              <td>{openDateText}</td>
              <td>{finalizationText}</td>
              <td>{csvNameText}</td>
              <td>{status}</td>
            </tr>
          </tbody>
        </table>
      )}
    </>
  );
}
