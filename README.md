# PowerDNS Docker Image with PostgreSQL Backend

[![Image Size](https://images.microbadger.com/badges/image/procraft/pdns-postgres.svg)](https://microbadger.com/images/procraft/pdns-postgres)
[![Docker Stars](https://img.shields.io/docker/stars/procraft/pdns-postgres.svg)](https://hub.docker.com/r/procraft/pdns-postgres/)
[![Docker Pulls](https://img.shields.io/docker/pulls/procraft/pdns-postgres.svg)](https://hub.docker.com/r/procraft/pdns-postgres/)
[![Docker Automated build](https://img.shields.io/docker/automated/procraft/pdns-postgres.svg)](https://hub.docker.com/r/procraft/pdns-postgres/)

Minimalistic Alpine-based PowerDNS image with PostgreSQL backend


## Features

* Based on Alpine 3.7 with APK ``pdns`` package version 4.1.0-r0
* PostgreSQL backend only
* Guardian process enabled with graceful shutdown
* Convenient configuration via mounting ``/etc/pdns/conf.d`` dir, ``/etc/pdns/pdns.conf`` file or via command-line arguments
* Default configuration is adopted to docker environment:
  * API port is changed from 8081 to 80 and exposed
  * Connections to the API webserver are allowed from local docker networks (but webserver itself is not enabled by default)
* Neither PostgreSQL server itself nor DB initialization are not included, this image is aimed to just run pdns server inside more complex setup using ``docker-compose`` or something else


## Usage

Basic:

```shell
docker run --name pdns \
  --link postgres \
  -p 53:53 -p 53:53/udp \
  procraft/pdns-postgres
```

With ``docker-compose`` and companion db server container (see example [docker-compose.yml](docker-compose.yml)):

```shell
docker-compose up -d
```
