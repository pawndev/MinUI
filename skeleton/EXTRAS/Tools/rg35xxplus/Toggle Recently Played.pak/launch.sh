#!/bin/sh

RECENT="$SDCARD_PATH/.userdata/shared/.minui/recent.txt"

if [ -d "$RECENT" ]; then
    rmdir "$RECENT" 2>/dev/null
    touch "$RECENT"
else
    rm -f "$RECENT"
    mkdir -p "$RECENT"
fi