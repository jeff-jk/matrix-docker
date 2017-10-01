#!/usr/bin/env bash
docker run -d --name=nginx --network=chat_nw -p 80:80 -p 443:443 \
-v /root/matrix-docker/nginx-container/nginx/nginx.conf:/etc/nginx/nginx.conf \
-v /home/letsencrypt/nginx-docker-volume:/var/www/mindlessflowcom/htdocs \
-v /home/letsencrypt/mindlessflowcom/mindlessflowcom_chain.crt:/etc/ssl/nginx/mindlessflowcom_crt.pem \
-v /home/letsencrypt/mindlessflowcom/mindlessflowcom_domain.key:/etc/ssl/nginx/mindlessflowcom_key.pem \
-v /home/letsencrypt/mindlessflowcom/mindlessflowcom_dhparams.pem:/etc/ssl/nginx/mindlessflowcom_dhparams.pem \
registry.gitlab.com/team-vince-jeff/matrix-docker/mindless-nginx:latest

