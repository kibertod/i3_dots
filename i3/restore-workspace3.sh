#!/bin/bash

i3-msg "workspace 3; append_layout ~/.config/i3/workspace3_layout.json"

kitty --hold --class "kitty-ws3-free-terminal" --name "kitty" &
kitty --hold --class "kitty-ranger" --name "kitty" ranger &