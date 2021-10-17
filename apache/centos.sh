#!/usr/bin/env bash

sudo docker container run \
    -it \
    --rm \
    --name certbot \
    -v "/etc/letsencrypt:/etc/letsencrypt" \
    -v "/var/lib/letsencrypt:/var/lib/letsencrypt" \
    -p 80 \
    -p 443 \
    certbot/certbot \
    certonly

    -v letsencrypt_certificates:/etc/letsencrypt \
      -v letsencrypt_challenges:/var/www/letsencrypt \
      -e "LETSENCRYPT_WEBROOT_MODE=true" \
      -e "LETSENCRYPT_EMAIL=dummy@example.com" \
      -e "LETSENCRYPT_DOMAIN1=example.com" \
      --name letsencrypt \
      blacklabelops/letsencrypt




docker container run \
    -d \
    --name apache \
    -v "/root/conf/:/usr/local/apache2/" \
    -v "/root/html/:/var/www/html/" \
    -p 80:80 \
    -p 443:443 \
    apache

docker container run \
    -it \
    --rm \
    --name certbot \
    -v "lets_etc:/etc/letsencrypt" \
    -v "lets_acme:/var/lib/letsencrypt" \
    -v "lets_log:/var/log/letsencrypt" \
    -p 80:80 \
    -p 443:443 \
    certbot/certbot
