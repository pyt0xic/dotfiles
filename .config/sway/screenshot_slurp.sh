#!/usr/bin/env bash
filename="/home/nic/Pictures/Screens/$(date +'%Y.%m.%d-%H:%m:%S').png"
touch $filename
grim $filename -g "$(slurp)"
