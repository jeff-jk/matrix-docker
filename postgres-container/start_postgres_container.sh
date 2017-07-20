#!/bin/bash
docker run -d --env-file /home/dkr/postgres-docker-volume/env.list \
 -v /home/dkr/postgres-docker-volume/database:/var/lib/postgresql/data/pgdata \
 registry.gitlab.com/team-vince-jeff/matrix-docker/mindless-postgres:latest
