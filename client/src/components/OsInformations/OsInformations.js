import useSWR from "swr";
import "./OsInformations.css";

async function fetchApi(key) {
  const response = await fetch(key);
  const data = await response.json();
  return data;
}

export default function OsInformations() {
  const { data, isLoading } = useSWR("/api/v1/os_status", fetchApi);
  const padding = "--";

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
                <td>{os.serviceNumber || padding}</td>
                <td>{os.licensePlate || padding}</td>
                <td>
                  {(() =>
                    os.openDate
                      ? new Date(os.openDate).toLocaleTimeString("pt-BR")
                      : padding)()}
                </td>
                <td>
                  {(() =>
                    os.finalization
                      ? new Date(os.finalization).toLocaleTimeString("pt-BR")
                      : padding)()}
                </td>
                <td>{os.TipoCsvSerproNome || padding}</td>
                <td>
                  {" "}
                  {(() => {
                    switch (os.status) {
                      case 0:
                        return "Aberto";
                      case 1:
                        return "Finalizado";
                      case 2:
                        return "Cancelado";
                      default:
                        return padding;
                    }
                  })()}
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      )}
    </>
  );
}
