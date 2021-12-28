#!/bin/sh
capacity=$(cat /sys/class/power_supply/BAT0/capacity)

if [ "$capacity" -lt 5 ]; then
	/usr/bin/systemctl hibernate
elif [ "$capacity" -lt 15 ]; then
	/usr/bin/notify-send -u normal "Battery status" "Battery is getting low at ${capacity}%"
fi


