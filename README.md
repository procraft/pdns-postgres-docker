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
* Neither PostgreSQL server itself nor DB initialization are not included, this image is aimed to just run pdns server inside more complex setup using ``docker-compose`` or something else


## Usage

```shell
docker run --name pdns \
  --link postgres \
  -p 53:53 -p 53:53/udp \
  procraft/pdns-postgres
```
