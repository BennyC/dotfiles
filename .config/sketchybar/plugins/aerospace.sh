#!/usr/bin/env bash

# make sure it's executable with:
# chmod +x ~/.config/sketchybar/plugins/aerospace.sh

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
  sketchybar --set "$NAME" background.drawing=on label.color=0xffffffff display="$DID"
else
  sketchybar --set "$NAME" background.drawing=off label.color=0xff0e5555 display="$DID"
fi
