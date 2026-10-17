#!/bin/sh
if pgrep -x btop >/dev/null; then
    pkill -SIGUSR2 -x btop
fi
