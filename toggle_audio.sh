#!/bin/bash

# Get all the sink indexes
SINKS=($(pactl list short sinks | awk '{print $1}'))

# Get the current default sink index
CURRENT_SINK=$(pacmd list-sinks | grep '* index:' | awk '{print $3}')

# Find the next sink to toggle to
for index in "${!SINKS[@]}"; do
    if [[ "${SINKS[$index]}" == "$CURRENT_SINK" ]]; then
        # Get the next index, or loop back to the beginning
        NEXT_INDEX=$(( (index+1) % ${#SINKS[@]} ))
        NEXT_SINK="${SINKS[$NEXT_INDEX]}"
        break
    fi
done

# Set the new default sink
pactl set-default-sink $NEXT_SINK

# Move currently playing audio streams to the new sink
for stream in $(pactl list short sink-inputs | awk '{print $1}'); do
    pactl move-sink-input $stream $NEXT_SINK
done
