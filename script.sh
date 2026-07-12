#!/bin/bash

set -e

REPO="https://github.com/Knesin/shvirtd-example-python.git"
DIR="/opt/shvirtd-example-python"

if [ ! -d "$DIR" ]; then
    git clone "$REPO" "$DIR"
fi

cd "$DIR"

docker compose up -d --build