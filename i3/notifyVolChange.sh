#!/bin/sh

CURRENT=`pactl list sinks | grep '^[[:space:]]Volume:' | \
    head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,'`
exec `notify-send -h int:value:$CURRENT  "Set volume to %p %"`
