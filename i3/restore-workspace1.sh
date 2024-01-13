#!/bin/bash

i3-msg "workspace 1; append_layout ~/.config/i3/workspace1_layout.json"

kitty --hold --class "kitty-free-terminal" --name "kitty" &
kitty --hold --class "kitty-clock" --name "kitty" tclock -c white &
kitty --hold --class "kitty-ncspot" --name "kitty" ncspot &
kitty --hold --class "kitty-cava" --name "kitty" cava &
kitty --hold --class "kitty-oneplayer" --name "kitty" oneplayer &
