#!/bin/bash

function setupSingleMonitor() {
    # Setup single monitor
    xrandr --output eDP --primary --mode 1920x1200 --pos 0x0 --rotate normal --output DisplayPort-0 --off --set TearFree on

    # Setup bscp virtual displays
    bspc monitor eDP -d 1 2 3 4 5 6
}

function setupDualMonitors() {
    # Setup dual monitor
    xrandr --output eDP --mode 1920x1200 --pos 0x1080 --rotate normal --output DisplayPort-0 --primary --mode 1920x1080 --pos 0x0 --rotate normal

    # Make sure monitors are in the right order
    if ! bspc query --monitors --names | head -1 | grep DisplayPort-0; then
        bspc monitor edP --swap DisplayPort-0
    fi

    # Setup bscp virtual displays
    bspc monitor eDP -d 7 8 9
    bspc monitor DisplayPort-0 -d 1 2 3 4 5 6
}



if xrandr -q | grep -w connected | grep DisplayPort-0; then
    setupDualMonitors
else
    setupSingleMonitor
fi
