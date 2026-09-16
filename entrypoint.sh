#!/bin/sh
set -e
if [ -z "$VLESS_UUID" ]; then
  if [ -r /proc/sys/kernel/random/uuid ]; then
    VLESS_UUID=$(cat /proc/sys/kernel/random/uuid)
  else
    VLESS_UUID=$(cat /dev/urandom | tr -dc 'a-f0-9' | head -c 32 | sed 's/\(........\)\(....\)\(....\)\(....\)\(............\)/\1-\2-\3-\4-\5/')
  fi
  echo "Generated VLESS_UUID=$VLESS_UUID"
fi
sed -i "s/REPLACE_ME_UUID/$VLESS_UUID/" /etc/sing-box/config.json
if [ -n "$PORT" ]; then
  sed -i "s/3000/$PORT/" /etc/sing-box/config.json
  echo "Listening on PORT=$PORT"
fi
cat /etc/sing-box/config.json
exec sing-box run -c /etc/sing-box/config.json
