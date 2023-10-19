#!/bin/sh
#
wall=$(find ~/images/wallpapers -type f -name "*.jpg" -o -name "*.png" | shuf -n 1)

nitrogen --set-zoom $wall

wal -c
wal -i $wall

xdotool key super+F5
