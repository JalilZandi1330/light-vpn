#!/bin/sh
set -e
# Generate password from env or random
if [ -z "$SS_PASSWORD" ]; then
  SS_PASSWORD=$(cat /dev/urandom | tr -dc 'A-Za-z0-9' | head -c 16)
  echo "Generated SS_PASSWORD=$SS_PASSWORD"
fi
# Replace placeholder
sed -i "s/REPLACE_ME_16CHAR/$SS_PASSWORD/" /etc/sing-box/config.json
# Railway provides PORT env - sing-box must listen on it
if [ -n "$PORT" ]; then
  sed -i "s/3000/$PORT/" /etc/sing-box/config.json
  echo "Listening on PORT=$PORT"
fi
exec sing-box run -c /etc/sing-box/config.json
