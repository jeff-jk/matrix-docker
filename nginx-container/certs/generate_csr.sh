#!/usr/bin/env bash
openssl req -new -sha256 \
-key letsencrypt_mindlessflowcom_domain.key -subj "/" \
-reqexts SAN \
-config <(cat /etc/ssl/openssl.cnf <(printf "[SAN]\nsubjectAltName=DNS:mindlessflow.com,DNS:www.mindlessflow.com,DNS:chat.mindlessflow.com")) > mindlessflowcom.csr