#!/bin/bash

brightnessctl set 10%-
value=$(brightnessctl -m | awk -F, '{print substr($4, 0, length($4)-1)}' | tr -d '%')
dunstify "brightness " -h int:value:$value -t 1000
