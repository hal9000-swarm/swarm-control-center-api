# Swarm Control Center API Specifications

The repository hosts the API specifications related to the Swarm Control Center API.

## Structure

  - services: holds Openapi specifications regarding the endpoints
  - schemas: contains Openapi specifications that are commonly used across the project
  - example: hosts example requests and responses as well as a Postman Collection
  - documentation: provides supporting material such as sequence, activity, or state diagrams

## Mock Server

[spotlight/prism](https://github.com/stoplightio/prism) is used to create an API mock server.
A Docker container is created on each push to master and automatically deployed at https://swarm-control-center-mock-api.azurewebsites.net/.

The mock server uses the provided examples to generate random data. The examples can be specified with providing the `format` and/or `x-faker` property. Data types to use in conjunction with x-faker can be looked up here: [https://github.com/marak/Faker.js/](https://github.com/marak/Faker.js). Keep in mind to provide an `Authorization` header including the Bearer token in order to authorize. As this is a mock server, any provided value will do.
