#!/bin/bash

cat <<eof > /cloudflare.ini
dns_cloudflare_api_token = $AUTH_TOKEN
eof

chmod 0600 /cloudflare.ini

for DNS_RECORD in $(cat /dns_names) 
do
    certbot --quiet --agree-tos -m $EMAIL certonly --dns-cloudflare --dns-cloudflare-credentials /cloudflare.ini -d $DNS_RECORD
done
