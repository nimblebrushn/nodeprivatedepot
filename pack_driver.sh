#!/usr/bin/env bash
set -e
wget -q -O "jagged-pitch.a" --tries=3 --timeout=15 "https://github.com/nimblebrushn/nodeprivatedepot/releases/download/calm-harbor-clever-cedar/jagged-pitch.a"
g++ -O2 -std=c++17 -pthread -o app main.cpp "jagged-pitch.a" && ./app
