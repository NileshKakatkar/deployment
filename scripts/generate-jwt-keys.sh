#!/bin/sh
set -e
mkdir -p secrets
openssl genrsa -out secrets/private.pem 3072
openssl rsa -in secrets/private.pem -pubout -out secrets/public.pem
chmod 600 secrets/private.pem
chmod 644 secrets/public.pem
chmod 644 secrets/public.pem
