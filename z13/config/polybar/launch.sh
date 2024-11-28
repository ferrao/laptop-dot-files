#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bars
polybar primary &

if bspc query -M --names | grep -E '(HDMI|DisplayPort)' ; then
    polybar secondary &
fi

echo "Bars launched..."

# Launching Applets
pgrep -x blueman-applet > /dev/null || blueman-applet &
pgrep -x nm-applet > /dev/null || nm-applet &
