#!/usr/bin/env sh

# Terminate other bars
killall -q polybar

# Wait for process to shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bars
polybar -r main &
#polybar bar2 &

echo "Bars launched..."
