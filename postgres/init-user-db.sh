#!/bin/bash
set -e

psql -U "${POSTGRES_USER}" -c "CREATE ROLE \"${PDNS_DB_USER}\" LOGIN PASSWORD '${PDNS_DB_PASSWORD}'"

createdb -U "${POSTGRES_USER}" -O "${PDNS_DB_USER}" -T template0 "${PDNS_DB_NAME}"

psql -v ON_ERROR_STOP=1 -U "${PDNS_DB_USER}" -w -f /tmp/schema.sql "${PDNS_DB_NAME}"
