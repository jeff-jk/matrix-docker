#!/bin/bash

docker run -d --name=postgres --network=chat_nw --env-file /home/dkr/postgres-docker-volume/env.list -v /home/dkr/postgres-docker-volume/docker-entrypoint-initdb.d:/docker-entrypoint-initdb.d -v /home/dkr/postgres-docker-volume/database:/var/lib/postgresql/data/pgdata registry.gitlab.com/team-vince-jeff/matrix-docker/mindless-postgres:latest
