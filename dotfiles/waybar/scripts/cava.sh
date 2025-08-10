#!/bin/bash
# Cava script for Waybar

# Kill any existing cava processes
killall -q cava

# Cava configuration
BARS=8            # Number of bars
BAR_HEIGHT=12     # Max height of bars in terminal characters
FRAMERATE=60      # Framerate to update bars

# Run cava in the background and pipe its output
cava -p ~/.config/cava/config | while read -r line; do
    # Output the formatted line for Waybar
    echo "{\"text\":\"$line\"}"
done
