#!/bin/sh
# Generate vless:// link for WebSocket mode (Render)
DOMAIN=${1:-your-app.onrender.com}
UUID=${2:-$(cat /proc/sys/kernel/random/uuid 2>/dev/null || echo PASTE_UUID_HERE)}
echo "vless://${UUID}@${DOMAIN}:443?encryption=none&security=tls&sni=${DOMAIN}&type=ws&path=%2Fvless-ws#light-vpn-ws"
echo "--- Client Settings ---"
echo "UUID: $UUID"
echo "Host/SNI: $DOMAIN"
echo "Port: 443, TLS: true, Transport: ws, Path: /vless-ws"
