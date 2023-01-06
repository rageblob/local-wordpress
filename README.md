# local-wordpress

A local dockerized wordpress instance with a MariaDB database backend, all contained in its own separate network.

## Usage

Run `make` or `docker-compose up -d` to get started.
The deployment will be accessible via [localhost](https://localhost:80).

Run `make down` or `docker-compose down` to tear down the deployment once you are done tinkering.
