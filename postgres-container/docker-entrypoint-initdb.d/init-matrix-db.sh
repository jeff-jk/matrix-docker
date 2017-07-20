#!/bin/bash
set -e
psql <<- EOSQL
    CREATE USER synapse_user with password 'DBsynapse11!';
    CREATE DATABASE synapse ENCODING 'UTF8' LC_COLLATE='C' LC_CTYPE='C' template=template0 OWNER synapse_user;
    GRANT ALL PRIVILEGES ON DATABASE synapse TO synapse_user;
EOSQL

