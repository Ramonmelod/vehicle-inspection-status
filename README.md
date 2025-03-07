# vehicle-inspection-status

<div>
<img src="https://user-images.githubusercontent.com/25181517/183859966-a3462d8d-1bc7-4880-b353-e2cbed900ed6.png" alt="express logo" width="100" height="auto">
<img src="https://raw.githubusercontent.com/marwin1991/profile-technology-icons/refs/heads/main/icons/mssql.png" alt="SQL SERVER logo" width="100" height="auto">
<img src="https://raw.githubusercontent.com/marwin1991/profile-technology-icons/refs/heads/main/icons/docker.png" alt="docker logo" width="100" height="auto">

## Technologies used:

- `Express`
- `Microsof SQL SERVER`
- `Node`

## Description:

- The **Vehicle Inspection Status** project aims to provide a platform to manage and monitor the status of vehicle inspections

## Get started

1. First run the `npm install` to download all the **server** and **client** depedencies:

```sh
npm install
```

2. Run the command below to start the container:

```sh
npm run services:up
```

3. Run the command below to start the the server:

```sh
npm run dev
```

4. Run the command below to start the REACT and in order to have the frontend dashboard:

```sh
npm start
```

## Server Endpoint

## GET

**Requisition**

`/api/v1/os_status`

```sh
curl -s http://localhost:8080/api/v1/os_status | python3 -m json.tool --no-ensure-ascii

```

obs.: In case you have not python installed in your machine you can run only: **curl -s http://localhost:8080/api/v1/os_status**

## Client Endpoint

- To access the client interface, open a browser and go to:

```
 http://localhost:3000
```

## Direct access to the database container

- In ubuntu you can access the postgres database container using the comand:

```sh
  sqlcmd -S localhost,1400 -U sa -P 'Local_password123'

```

obs.: For using the sqlcmd you need to install the `mssql-tools`

- You can access the docker container with the command below:

```sh
docker exec -it mssql_server bin/bash
```

## Author

- Ramon Melo — Linkedin: [/in/ramonmelod](https://www.linkedin.com/in/ramonmelod/)
