#!/bin/bash

i3-msg "workspace 1; append_layout ~/.config/i3/workspace1_layout.json"
i3-msg "workspace 1; gaps top current set 0"

jellyfinmediaplayer &
kitty --hold --class "kitty-clock" --name "kitty" tclock -c white &
kitty --hold --class "kitty-cava" --name "kitty" cava &
