const { json } = require("express");

test("teste status response é 200", async () => {
  const response = await fetch("http://localhost:8080/api/v1/os_status");

  expect(response.status).toBe(200);
});
