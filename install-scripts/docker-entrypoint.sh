#!/usr/bin/env bash
set -e
echo "Starting docker-entrypoint.sh"

# OSの判定
if [[ "$(cat /etc/os-release)" == *"Ubuntu"* ]]; then
    # Ubuntuの場合
    apt update
    apt install -y make
elif [[ "$(cat /etc/os-release)" == *"Alpine"* ]]; then
    # Alpineの場合
    apk update
    apk add make
else
    echo "Unsupported OS."
    exit 1
fi
