# PostgreSQL DB Companion Image for PowerDNS

[![Image Size](https://images.microbadger.com/badges/image/procraft/pdns-postgres-db.svg)](https://microbadger.com/images/procraft/pdns-postgres-db)
[![Docker Stars](https://img.shields.io/docker/stars/procraft/pdns-postgres-db.svg)](https://hub.docker.com/r/procraft/pdns-postgres-db/)
[![Docker Pulls](https://img.shields.io/docker/pulls/procraft/pdns-postgres-db.svg)](https://hub.docker.com/r/procraft/pdns-postgres-db/)
[![Docker Automated build](https://img.shields.io/docker/automated/procraft/pdns-postgres-db.svg)](https://hub.docker.com/r/procraft/pdns-postgres-db/)

Aimed to be used in pair with procraft/pdns-postgres.


## Features

* Based on official postgres:10-alpine with minimal additional initialization
* Automatically initializes DB with PowerDNS v4.1.0-r0 schema of first start
* Customizable DB name, user and password via environment variables


## Usage

```shell
docker run --name pdns \
  -e POSTGRES_ROOT_PASSWORD=must-changeme \
  -e PDNS_DB_NAME=pdns \
  -e PDNS_DB_USER=pdns \
  -e PDNS_DB_PASSWORD=changeme \
  procraft/pdns-postgres-db
```
