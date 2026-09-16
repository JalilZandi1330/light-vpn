#!/bin/sh
# Generate ss:// link for WebSocket mode (Render)
DOMAIN=${1:-your-app.onrender.com}
PASS=${2:-$(cat /dev/urandom | tr -dc 'A-Za-z0-9' | head -c16)}
METHOD="aes-128-gcm"
# sing-box WS needs plugin opts
CREDS=$(echo -n "$METHOD:$PASS" | base64 -w 0)
# For Matsuri/Nekoray: plugin = websocket; path = /ss-ws; host = DOMAIN; tls = true
echo "ss://$CREDS@$DOMAIN:443#light-vpn-ws"
echo "--- Nekoray/sing-box WS Settings ---"
echo "Method: $METHOD"
echo "Password: $PASS"
echo "Host: $DOMAIN"
echo "Port: 443"
echo "Path: /ss-ws"
echo "TLS: true"
echo "Transport: ws"
