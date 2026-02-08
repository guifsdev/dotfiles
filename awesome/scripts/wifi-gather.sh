#!/bin/bash

# Path to the shared memory file
OUTFILE="/dev/shm/wifi_info"

while true; do
    # Get active SSID and Signal
    DATA=$(nmcli -t -f active,ssid,signal dev wifi | grep '^yes' | cut -d: -f2,3)
    
    if [ -z "$DATA" ]; then
        echo "Disconnected:0" > "$OUTFILE"
    else
        echo "$DATA" > "$OUTFILE"
    fi
    
    # Wait 10 seconds before checking again
    sleep 10
done