import useSWR from "swr";
import "./OsInformations.css";

async function fetchApi(key) {
  const response = await fetch(key);
  const data = await response.json();
  return data;
}

export default function OsInformations() {
  const { data, isLoading } = useSWR("/api/v1/os_status", fetchApi);

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
            {data.map((os, index) => (
              <tr key={index}>
                <td>{os.serviceNumber}</td>
                <td>{os.licensePlate}</td>
                <td>{os.openDate}</td>
                <td>{os.finalization}</td>
                <td>{os.TipoCsvSerproNome}</td>
                <td>{os.status}</td>
              </tr>
            ))}
          </tbody>
        </table>
      )}
    </>
  );
}
