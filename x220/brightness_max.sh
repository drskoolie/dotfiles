#!/bin/bash
new=4648 
echo $new | sudo tee /sys/class/backlight/intel_backlight/brightness

