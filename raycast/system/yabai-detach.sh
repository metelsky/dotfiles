#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Yabai Detach
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖

yabai -m window --toggle float; yabai -m window --grid 1:1:0:0:1:1

