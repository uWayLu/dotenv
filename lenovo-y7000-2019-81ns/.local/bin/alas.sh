#!/bin/sh

PORT=${1:-22267}

TUN="ssh -fNL $PORT:127.0.0.1:$PORT win11.lan"
pkill -f "$TUN"
$($TUN)

$BROWSER --app="http://127.0.0.1:$PORT" -incognito

