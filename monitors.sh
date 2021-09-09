#!/bin/bash


external_monitor=$(xrandr | grep HDMI | awk '{print $1}')
if [[ -n $external_monitor ]]; then
	xrandr --output HDMI-0 --mode 2560x1440 --primary --left-of eDP-1-1 --output eDP-1-1 --mode 2560x1440
	exit
fi

xrandr --output eDP-1-1 --mode 2560x1440
