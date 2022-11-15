#!/bin/bash

SOUND=/usr/share/sounds/freedesktop/stereo/suspend-error.oga 
BATTERY=$(upower -e | grep 'BAT')

while :
do
    BATTERY_PERCENTAGE=$(upower -i $BATTERY|grep percentage|awk '{ print $2 }'|sed s/'%'/''/g)
    CABLE=$(upower -d | grep -n2 line-power | grep online | awk '{ print $3 }')

    if [[ "$BATTERY_PERCENTAGE" -lt "10" && $CABLE = "no" ]]; then

        notify-send --urgency=critical "WARNING: Battery is about to die ($BATTERY_PERCENTAGE%)"  "Plug in the power cable"
        paplay $SOUND
    fi

sleep 20

done
