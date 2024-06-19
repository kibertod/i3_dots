#!/bin/bash

pactl set-sink-volume @DEFAULT_SINK@ +10%
value=$(pactl list sinks | grep '^[[:space:]]Volume:' | head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')
dunstify "volume 󰕾" -h int:value:$value -t 1000

