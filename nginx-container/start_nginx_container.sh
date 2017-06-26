#!/usr/bin/env bash
docker run -d -p 80:80 -p 443:443 \
-v /home/letsencrypt/nginx-docker-volume:/var/www/mindlessflowcom/htdocs \
-v /home/letsencrypt/mindlessflowcom/mindlessflowcom_cert_chain.crt:/etc/ssl/nginx/mindlessflowcom_crt.pem \
-v /home/letsencrypt/mindlessflowcom/letsencrypt_mindlessflowcom_domain.key:/etc/ssl/nginx/mindlessflowcom_key.pem \
-v /home/letsencrypt/mindlessflowcom/mindlessflowcom_dhparams.pem:/etc/ssl/nginx/mindlessflowcom_dhparams.pem \
registry.gitlab.com/team-vince-jeff/matrix-docker/mindless-nginx:latest