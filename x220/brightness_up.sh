#!/bin/bash
curr=$(cat /sys/class/backlight/intel_backlight/brightness)
new=$((curr + 250))  # Adjust 100 based on your preference
echo $new | sudo tee /sys/class/backlight/intel_backlight/brightness

