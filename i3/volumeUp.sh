#!/bin/bash

pactl set-sink-volume @DEFAULT_SINK@ +10%
value=$(amixer -D pulse sget Master | grep 'Left:' | awk -F'[][]' '{ print $2 }' | tr -d '%')
dunstify "volume 󰕾" -h int:value:$value -t 1000

