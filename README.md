# Mario Server

<div>
<img src="https://user-images.githubusercontent.com/25181517/183859966-a3462d8d-1bc7-4880-b353-e2cbed900ed6.png" alt="express logo" width="100" height="auto">
<img src="https://raw.githubusercontent.com/marwin1991/profile-technology-icons/refs/heads/main/icons/mssql.png" alt="SQL SERVER logo" width="100" height="auto">

## Technologies used:

- `Express`
- `Microsof SQL SERVER`
- `Node`

## Description:

- The **Vehicle Inspection Status** project aims to provide a platform to manage and monitor the status of vehicle inspections

## Endpoints

## GET

**Requisição**

`/`

```
curl -s http://localhost:3000/ | python3 -m json.tool

```

## Direct acces to the database container

- In ubuntu you can access the postgres database container using the comand:

```sh
  sqlcmd -S localhost,1400 -U sa -P 'Local_password123'

```

## Author

- Ramon Melo — Linkedin: [/in/ramonmelod](https://www.linkedin.com/in/ramonmelod/)
