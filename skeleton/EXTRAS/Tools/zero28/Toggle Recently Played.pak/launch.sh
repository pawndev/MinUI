#!/bin/sh
# Recently Played Toggle - MinUI Tool
# Run once to disable recently played tracking.
# Run again to re-enable it.

RECENT="/mnt/SDCARD/.userdata/shared/.minui/recent.txt"

if [ -d "$RECENT" ]; then
    # Currently disabled (it's a directory) — re-enable by removing dir and creating file
    rmdir "$RECENT"
    touch "$RECENT"
else
    # Currently enabled — remove file and replace with directory
    rm -f "$RECENT"
    mkdir -p "$RECENT"
fi
