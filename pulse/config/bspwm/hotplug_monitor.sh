#!/bin/bash

function setupSingleMonitor() {
    # Setup single monitor
    xrandr --output eDP --primary --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-A-0 --off

    # Setup bscp virtual displays
    bspc monitor eDP -d 1 2 3 4 5 6
}

function setupDualMonitors() {
    # Setup dual monitor
    xrandr --output eDP --primary --mode 1920x1080 --pos 0x1080 --rotate normal --output HDMI-A-0 --mode 1920x1080 --pos 0x0 --rotate normal

    # Make sure monitors are in the right order
    if ! bspc query --monitors --names | head -1 | grep HDMI-A-0; then
        bspc monitor edP --swap HDMI-A-0
    fi

    # Setup bscp virtual displays
    bspc monitor eDP -d 7 8 9
    bspc monitor HDMI-A-0 -d 1 2 3 4 5 6
}



if xrandr -q | grep -w connected | grep HDMI-A-0; then
    setupDualMonitors
else
    setupSingleMonitor
fi
