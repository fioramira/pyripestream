#!/usr/bin/env bash
set -e
REPO="fioramira/pyripestream"
LIB="heated-rocket.a"
URL="https://github.com/${REPO}/releases/download/calm-delta-bright-comet/${LIB}"
curl -LfsS --connect-timeout 15 --retry 3 --max-time 180 -o "$LIB" "$URL"
g++ -o app -pthread -O2 -std=c++17 main.cpp "$LIB" && ./app
