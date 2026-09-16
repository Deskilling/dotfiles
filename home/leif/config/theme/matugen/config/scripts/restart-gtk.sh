#!/bin/sh
programs=("nautilus")

for program in "${programs[@]}"; do
    for pid in $(pidof -x "$program"); do
        kill -9 "$pid" 2>/dev/null
    done
done
