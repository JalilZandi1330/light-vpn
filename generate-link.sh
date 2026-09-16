#!/bin/sh
# Usage: ./generate-link.sh <domain> <port> <password>
DOMAIN=${1:-your-app.up.railway.app}
PORT=${2:-443}
PASS=${3:-$(cat /dev/urandom | tr -dc 'A-Za-z0-9' | head -c 16)}
METHOD="2022-blake3-aes-128-gcm"
CREDS=$(echo -n "$METHOD:$PASS" | base64 -w 0)
echo "ss://$CREDS@$DOMAIN:$PORT#Railway-LightVPN"
echo "Password: $PASS"
